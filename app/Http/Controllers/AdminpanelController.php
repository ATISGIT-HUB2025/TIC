<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use App\Models\Usertype;
use App\Models\Withdraw;
use App\Models\Projects;
use App\Models\Invest;
use App\Models\CRM\Customerpayment;
use Illuminate\Contracts\View\View;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;
use Carbon\Carbon;



class AdminpanelController extends Controller
{
    public function updatetransaction(Request $request)
    {
        // Validate request inputs
        $request->validate([
            'transaction_id' => 'required|exists:customer_payment,id', 
            'status' => 'required|in:pending,complete,reject', 
        ]);
        $payment = Customerpayment::findOrFail($request->transaction_id);
        $user = User::findOrFail($payment->customer_id); 
        if ($request->status == "complete") {
            $user->wallet += $payment->amount;
            $user->save();
        }
        $payment->status = $request->status;
        $payment->save();
        return redirect()->back()->with('success', 'Transaction Updated Successfully!');
    }
 
 
    public function updatewithdraw(Request $request)
    {
        // Validate request inputs
        $request->validate([
            'transaction_id' => 'required|exists:withdraw,id', 
            'status' => 'required|in:pending,complete,reject', 
        ]);

        $payment = Withdraw::findOrFail($request->transaction_id);

        // $invest = Invest::findOrFail($payment->invest_id);

        // // Update the created_at field to the current date and time
        // $invest->created_at = now();
        // $invest->firstminus = 'Y';
        
        // // Save the changes to the database
        
        // $invest->save();

        // $user = User::findOrFail($payment->customer_id); 
        // if ($request->status == "complete") {
        //     $user->wallet += $payment->amount;
        //     $user->save();
        // }
        
        if($request->status == "reject"){
            $payment->amount_cut = 'N';
        }else{
            $payment->amount_cut = 'Y';
        }
        $payment->status = $request->status;
        $payment->save();
        return redirect()->back()->with('success', 'Withdraw Updated Successfully!');
    }
    

    public function gettransaction($modelid){
        $row  = Customerpayment::findorfail($modelid);
        return view('admin/transaction/edit',compact('row'));
        
    }

    public function getwithdraw($modelid){
        $row  = Withdraw::findorfail($modelid);
        return view('admin/transaction/getwithdraw',compact('row'));
        
    }

    public function transactions(Request $request){
        
        $data['payments'] = Customerpayment::where('status','pending')->latest()->get();

        $searchkey = $request->query('type');  // Use $request->query() to safely retrieve the 'type' parameter

        if ($request->ajax()) {
            $query = CustomerPayment::query()->latest();
    
            // Filter by Request No
            if ($request->has('request_no') && !empty($request->request_no)) {
                $query->where('id', 'like', "%{$request->request_no}%");
            }
    
            // Filter by Status
            if ($request->has('status') && !empty($request->status)) {
                $query->where('status', $request->status);
            }
    
            // Filter by Date Range
            if ($request->has('from_date') && $request->has('to_date') && !empty($request->from_date) && !empty($request->to_date)) {
                $dateColumn = $request->date_filter === 'request' ? 'created_at' : 'updated_at';
                $query->whereBetween($dateColumn, [$request->from_date, $request->to_date]);
            }
    
            return DataTables::eloquent($query)
                ->addIndexColumn()
                ->editColumn('screenshot', function($payment) {
                    return $payment->screenshot ? 
                        '<a href="' . $payment->screenshot . '" target="_blank">
                            <img src="' . $payment->screenshot . '" alt="Screenshot" class="img-thumbnail" width="50">
                        </a>' : 'No Screenshot';
                })
                ->editColumn('action', function($payment) {
                    return '<a href="javascript:void(0)" onclick="openmodel('.$payment->id.')" data-bs-toggle="modal" data-bs-target="#exampleModal">Edit</a>';
                })

                ->editColumn('status', function($payment) {
                    // Check the status and return corresponding button
                    if ($payment->status == 'pending') {
                        return '<button class="badge border-0 bg-warning">Pending</button>';
                    } elseif ($payment->status == 'complete') {
                        return '<button class="badge border-0 bg-success">Complete</button>';
                    } elseif ($payment->status == 'reject') {
                        return '<button class="badge border-0 bg-danger">Reject</button>';
                    } else {
                        return 'Unknown Status';
                    }
                })
                
                ->editColumn('created_at', function($payment) {
                    return Carbon::parse($payment->created_at)->format('d/m/Y h:iA'); // 20/02/2025 09:10PM
                })
                ->editColumn('updated_at', function($payment) {
                    return Carbon::parse($payment->updated_at)->format('d/m/Y h:iA'); // 20/02/2025 09:10PM
                })
                
                ->rawColumns(['action', 'screenshot','status','created_at','updated_at'])
                ->make(true);
        }
        
     return view('admin/transaction/index',$data);   
    }
    
    
    public function kycrequests(Request $request)
    {
        $data['users'] = User::where('kyc_status', 'apply')->orderBy('kyc_time','desc')->get();
    
        if ($request->ajax()) {
            $query = User::query()->where('kyc_status', '!=', 'pending')->orderBy('kyc_time','desc');
           // Filter by Request No (User ID)
            if ($request->has('request_no') && !empty($request->request_no)) {
                $query->where('id', 'like', "%{$request->request_no}%");
            }
    
            // Filter by KYC Status
            if ($request->has('status') && !empty($request->status)) {
                $query->where('kyc_status', $request->status);
            }
    
            // Filter by Date Range
            if ($request->has('from_date') && $request->has('to_date') && !empty($request->from_date) && !empty($request->to_date)) {
                $query->whereBetween('kyc_date', [$request->from_date, $request->to_date]);
            }
    
            return DataTables::eloquent($query)
                ->addIndexColumn()
                ->editColumn('username', function ($user) {
                    return $user->name; // Assuming 'name' is the username field
                })
                ->editColumn('mobile', function ($user) {
                    return $user->mobile ?? 'N/A';
                })
                ->editColumn('email', function ($user) {
                    return $user->email ?? 'N/A';
                })
                ->editColumn('kyc_status', function ($user) {
                    // Display status as a badge
                    if ($user->kyc_status == 'apply') {
                        return '<button class="badge border-0 bg-warning">Pending</button>';
                    } elseif ($user->kyc_status == 'complete') {
                        return '<button class="badge border-0 bg-success">complete</button>';
                    } elseif ($user->kyc_status == 'reject') {
                        return '<button class="badge border-0 bg-danger">Rejected</button>';
                    } else {
                        return 'Unknown';
                    }
                })
                ->editColumn('kyc_date', function ($user) {
                    return $user->kyc_date ? Carbon::parse($user->kyc_date)->format('d/m/Y h:i A') : 'N/A';
                })
                ->editColumn('action', function($payment) {
                    return '<a href="javascript:void(0)" onclick="openmodel('.$payment->id.')" data-bs-toggle="modal" data-bs-target="#exampleModal">View & Update
                    </a>';
                })

                ->rawColumns(['action', 'kyc_status'])
                ->make(true);
        }
    
        return view('admin/transaction/kyc', $data);
    }
    
    public function viewkyc(Request $request,$id) {
        $row = User::findorfail($id);
        if($request->method() == "POST"){
            $row->kyc_status = $request->kyc_status;
            $row->kyc_reason = $request->kyc_reason;
            $row->save();
            return redirect()->back()->with('success','Updated Successfully');
        }
        return view('admin/transaction/viewkyc',compact('row'));
    }

    public function withdraw(Request $request)
    {
        $searchkey = $request->query('type');  // Use $request->query() to safely retrieve the 'type' parameter
    
        if ($request->ajax()) {
            // Fetch the data with relationships
            $query = Withdraw::latest()->with(['user', 'invest']);
    
            // If there is a date filter, add it to the query
            if ($request->has('start_date') && $request->has('end_date')) {
                $startDate = $request->start_date;
                $endDate = $request->end_date;
                $query->whereBetween('created_at', [$startDate, $endDate]);
            }
    
            if ($request->has('status')) {
                $query->where('status', $request->status);
            }
    
            // Return the response formatted for DataTables
            return DataTables::eloquent($query)
                ->addIndexColumn()
                ->addColumn('user_name', function ($withdraw) {
                    return $withdraw->user ? $withdraw->user->name : 'N/A';
                })
                ->addColumn('invest_name', function ($withdraw) {
                    return $withdraw->invest ? $withdraw->invest->name : 'N/A'; // Assuming 'name' is a field in the 'invests' table
                })
                ->addColumn('package_name', function ($withdraw) {
                    return $withdraw->package ? $withdraw->package->name : 'N/A'; // Assuming 'name' is a field in the 'packages' table
                })
                ->editColumn('action', function ($withdraw) {
                    return $withdraw->id ?
                        '<a href="javascript:void(0)" onclick="openmodel(' . $withdraw->id . ')" target="_blank" data-bs-toggle="modal" data-bs-target="#exampleModal">Edit</a>' :
                        'No Action';
                })

                ->editColumn('created_at', function ($withdraw) {
                    return $withdraw->created_at ? $withdraw->created_at->format('d F Y h:i A') : 'N/A';
                })

                ->editColumn('status', function ($withdraw) {
                    // Check the status and return corresponding button
                    if ($withdraw->status == 'pending') {
                        return '<button class="badge border-0 bg-warning">Pending</button>';
                    } elseif ($withdraw->status == 'complete') {
                        return '<button class="badge border-0 bg-success">Complete</button>';
                    } elseif ($withdraw->status == 'reject') {
                        return '<button class="badge border-0 bg-danger">Reject</button>';
                    } else {
                        return 'Unknown Status';
                    }
                })
                ->setRowId('id') // Optional: You can set a custom row ID here
                ->rawColumns(['action','created_at','status', 'user_name', 'invest_name', 'package_name']) // Allow HTML in these columns
                ->make(true);
        }
    
        return view('admin/transaction/withdraw');
    }




    public function withdrawadmin(Request $request)
{
    $query = Withdraw::with(['user', 'invest'])->latest();

    // Filter by Request No
    if ($request->filled('request_no')) {
        $query->where('id', $request->request_no);
    }

    // Filter by Status
    if ($request->filled('status')) {
        $query->where('status', $request->status);
    }

    // Handle Date Filtering
    if ($request->filled('from_date') && $request->filled('to_date')) {
        $startDate = Carbon::parse($request->from_date)->startOfDay();
        $endDate = Carbon::parse($request->to_date)->endOfDay();

        if ($request->date_filter === 'request') {
            $query->whereBetween('created_at', [$startDate, $endDate]);
        } elseif ($request->date_filter === 'verified') {
            $query->whereBetween('updated_at', [$startDate, $endDate]);
        }
    }

    return DataTables::eloquent($query)
        ->addIndexColumn()
        ->addColumn('user_name', function ($withdraw) {
            return $withdraw->user ? $withdraw->user->name : 'N/A';
        })
        ->editColumn('created_at', function ($withdraw) {
            return $withdraw->created_at ? $withdraw->created_at->format('d/m/Y h:i A') : 'N/A';
        })
        ->editColumn('updated_at', function ($withdraw) {
            return $withdraw->updated_at ? $withdraw->updated_at->format('d/m/Y h:i A') : 'N/A';
        })
        ->editColumn('status', function ($withdraw) {
            $statusClasses = [
                'pending' => 'bg-warning',
                'complete' => 'bg-success',
                'reject' => 'bg-danger'
            ];
            $class = $statusClasses[$withdraw->status] ?? 'bg-secondary';
            return '<button class="badge border-0 ' . $class . '">' . ucfirst($withdraw->status) . '</button>';
        })

        ->editColumn('action', function ($withdraw) {
            if ($withdraw->status == "pending") {
                return $withdraw->id ?
                '<a href="javascript:void(0)" onclick="openmodel(' . $withdraw->id . ')" target="_blank" data-bs-toggle="modal" data-bs-target="#exampleModal">Edit</a>' :
                'No Action';    
            }else{
                return 
                'No Action';
            }
            
        })
        
        
        ->setRowId('id')
        ->rawColumns(['status','action'])
        ->make(true);
}



    public function maintenance(){
        return view('maintenance');
    }

    public function updateprofileadmin(Request $request){
        if($request->method() == "POST"){

             $validated = $request->validate([
                'name' => 'required',
                'email' => 'required|email',
                'destination' => 'required',
                'phone' => 'required|digits:10'
            ]);
            $data = [
                'name'  => $request->name,
                'email'  => $request->email,
                'destination'  => $request->destination,
                'phone'  => $request->phone,
            ];
            $userid = Auth::user()->id;
            DB::table('users')->where('id',$userid)->update($data);
            return redirect()->back()->with('success','Successfully Updated.');
        }
    }
    public function dashboard(){
        return view('admin.dashboard');
    }
    public function profile(){
        return view('admin.profile');
    }
    public function change_password(Request $request){
        $validated = $request->validate([
            'currunt_password' => 'required',
            'new_password' => 'required|min:6|confirmed',
            'new_password_confirmation' => 'required| min:6'
    ]);

    #Match The Old Password

    if(!Hash::check($request->currunt_password, auth()->user()->password)){
            return back()->with("error", "Currunt Password Doesn't match!");
    }
        #Update the new Password
        User::whereId(auth()->user()->id)->update([
            'password' => Hash::make($request->new_password)
        ]);

        return back()->with("success", "Password changed successfully!");
    }

    public function createuser(Request $request){

        if (isset($_GET['type']) && !empty($_GET['type'])) {
            if ($_GET['type'] == 'customer') {
                $type = "customer";
                $title = 'Customer';
            }elseif($_GET['type'] == 'team'){
                $type = "team";
                $title = 'Team';

            }
            elseif($_GET['type'] == 'project_manager'){
                $type = "project_manager";
                $title = 'Project Manager';
        }
            elseif($_GET['type'] == 'account_manager'){
                $type = "account_manager";
                $title = 'Account Manager';
        }
    }else{
            return redirect()->route('dashboard')->with("error", "Invalid Request Found !");
        }

        if ($request->method() == "POST") {

            // $validated = $request->validate([
            //     'name' => 'required',
            //     'email' => 'required|email|unique:users',
            //     'phone' => 'required|digits:10|unique:users',
            //     'company_name' => 'required',
            //     'company_address' => 'required',
            //     'gstin_number' => 'required',
            //     'domain' => 'required',
            //     'password' => 'required|min:6',
            // ]);


            $user = new User;
            $user->name = $request->name;
            $user->email = $request->email;
            $user->phone = $request->phone;
            $user->company_name = $request->company_name;
            $user->company_address = $request->company_address;
            $user->gstin = $request->gstin_number;
            $user->domain = $request->domain;
            $user->password = Hash::make($request->password);
            $user->codeid = $request->password;

            if ($request->image) {
                $user->image = uploadImage($request->image,$user,'image');
            }

            if ($_GET['type'] == "team") {
            $user->customer_type_id = $request->customertype;
            $user->role = "team";
            }

            if ($user->save()) {
                if ($_GET['type'] == "customer") {
                    return redirect('admin/users-list?type=customer')->with('success','Customer Created Successfully');
                }elseif($_GET['type'] == "team"){
                    return redirect('admin/users-list?type=team')->with('success','Team Created Successfully');
                }
                elseif($_GET['type'] == "project_manager"){
                    return redirect('admin/users-list?type=project_manager')->with('success','Project Manager Created Successfully');
                }
                elseif($_GET['type'] == "account_manager"){
                    return redirect('admin/users-list?type=account_manager')->with('success','Account Manager Created Successfully');
                }
            }
        }

        if (isset($_GET['type']) && !empty($_GET['type'])) {
            return view('admin.usersmanagement.create',compact('title'));
        }else{
            return redirect()->route('dashboard')->with("error", "Invalid Request Found !");
        }


    }

    public function users_list(){

        if (isset($_GET['type']) && !empty($_GET['type'])) {
            if ($_GET['type'] == 'customer') {
                $user = User::where('role','customer')->get();
                $title = 'Customer ( Partner )';
                $type = 'customer';
            }elseif($_GET['type'] == 'team'){
                $user = User::where('role','team')->get();
                $title = 'Team';
                $type = "team";
            }
            elseif($_GET['type'] == 'project_manager'){
                $user = User::where('role','project_manager')->get();
                $title = 'Project Manager';
                $type = "project_manager";
            }
            elseif($_GET['type'] == 'account_manager'){
                $user = User::where('role','account_manager')->get();
                $title = 'Account Manager';
                $type = "account_manager";
            }
            return view('admin.usersmanagement.index',compact('user','title','type'));

        }else{
            return redirect()->route('dashboard')->with("error", "Invalid Request Found !");
        }
    }

    public function edit_users(Request $request, $id){

        $user = User::findOrFail($id);
        if (isset($_GET['type']) && !empty($_GET['type'])) {
            if ($_GET['type'] == 'customer') {
                $type = "customer";
                $title = "Customer";
            }elseif($_GET['type'] == 'team'){
                $type = "team";
                $title = "Team";
            }
            elseif($_GET['type'] == 'project_manager'){
                $type = "project_manager";
                $title = "Project Manager";
            }
            elseif($_GET['type'] == 'account_manager'){
                $type = "account_manager";
                $title = "Account Manager";
            }
        }else{
            return redirect()->route('dashboard')->with("error", "Invalid Request Found !");
        }

        if ($request->method() == "POST") {
            // $validated = $request->validate([
            //     'name' => 'required',
            //     'email' => 'required|email',
            //     'phone' => 'required|digits:10',
            //     'company_name' => 'required',
            //     'company_address' => 'required',
            //     'gstin_number' => 'required',
            //     'domain' => 'required',
            //     'customertype' => 'required',
            // ]);

            $user->name = $request->name;
            $user->email = $request->email;
            $user->phone = $request->phone;
            $user->company_name = $request->company_name;
            $user->company_address = $request->company_address;
            $user->gstin = $request->gstin_number;
            $user->domain = $request->domain;
            if ($request->image) {
                $user->image = updateImage($request->image,$user,'image');
            }
            if ($_GET['type'] == "team") {
                $user->customer_type_id = $request->customertype;
            }
            if (!empty($request->password)) {
                $user->codeid = $request->password;
            $user->password = Hash::make($request->password);
            }
            $user->codeid = $request->password;
            if ($user->save()) {
                if ($_GET['type'] == "customer") {
                    return redirect('admin/users-list?type=customer')->with('success','Customer Updated Successfully');
                }
                elseif($_GET['type'] == "team"){
                    return redirect('admin/users-list?type=team')->with('success','Team Updated Successfully');
                }
                elseif($_GET['type'] == "project_manager"){
                    return redirect('admin/users-list?type=project_manager')->with('success','Project Manager Updated Successfully');
                }
                elseif($_GET['type'] == "account_manager"){
                    return redirect('admin/users-list?type=account_manager')->with('success','Account Manager Updated Successfully');
                }
            }
        }
        return view('admin.usersmanagement.edituser',compact('user','title'));
    }



    // --customers-types

    public function customertypes(){
        $data = Usertype::get();
        return view('admin.customerstype',compact('data'));
    }

    public function usertypecreate(Request $request){
        $validated = $request->validate([
            'user_type' => 'required',
            'status' => 'required'
        ]);
        $usertype = new Usertype;
        $usertype->type = $request->user_type;
        $usertype->status = $request->status;
        if ($usertype->save()) {
            return redirect()->back()->with('success','Created Successfully');
        }
    }
    public function editusertype(Request $request){
        $id = $request->usertypeid;
        $usertype = Usertype::find($id);
        $usertype->type = $request->user_type;
        if ($usertype->save()) {
            return redirect()->back()->with('success','Updated Successfully');
        }
    }

    public function customerslist(){

        if (isset($_GET['type']) && !empty($_GET['type'])) {
            if ($_GET['type'] == 'customer') {
                $user =  DB::table('users')->where('users.role', '!=', 'admin')
                         ->where('users.role',  'customer')->get();
                $title = 'Customer ( Partner )';
                $type = 'customer';
            }elseif($_GET['type'] == 'team'){
                $user =  DB::table('users')
                ->join('user_types', function($join) {
                    $join->on('users.customer_type_id', '=', 'user_types.id')
                         ->where('users.role', '!=', 'admin')
                         ->where('users.role',  'team');
                })
                ->select('users.*', 'user_types.type','user_types.id as usertypeid')
                ->get();
                $title = 'Team';
                $type = "team";
            }
            elseif($_GET['type'] == 'project_manager'){
                $user = User::where('role','project_manager')->get();
                $title = 'Project Manager';
                $type = "project_manager";
            }
            elseif($_GET['type'] == 'account_manager'){
                $user = User::where('role','account_manager')->get();
                $title = 'Account Manager';
                $type = "account_manager";
            }
            return view('admin.usersmanagement.index',compact('user','title','type'));

        }else{
            return redirect()->route('dashboard')->with("error", "Invalid Request Found !");
        }


    }




// ---------common-functions--------

public function changestatus($table,$id,$colom,$value){
    DB::table($table)->where('id',$id)->update([$colom => $value]);
    return redirect()->back()->with('success','Successfully Updated');
}

public function deleterow($table,$id){
    DB::table($table)->where('id',$id)->delete();
    return redirect()->back()->with('success','Successfully Deleted');
}

// --view-users---

public function viewusers_admin(Request $request,$id){
    if (isset($_GET['type']) && !empty($_GET['type'])) {
        if ($_GET['type'] == "team") {
            $user = User::find($id);
            $data = DB::table('projectasign')
            // ->join('projectstatus', 'projectasign.work_status', '=', 'projectstatus.id')
            ->join('projects', 'projectasign.project_id', '=', 'projects.id')
            ->join('projectasignuser', 'projectasign.id', '=', 'projectasignuser.project_id')
            ->where('projectasignuser.user_id',$id)
            ->select('projectasign.*','projectasignuser.*','projects.name as project_name')
            ->get();


            //   $data = DB::table('projectasign')
            // ->join('projectstatus', 'projectasign.work_status', '=', 'projectstatus.id')
            // ->join('projects', 'projectasign.project_id', '=', 'projects.id')
            // ->join('projectasignuser', 'projectasign.id', '=', 'projectasignuser.project_id')
            // ->where('projectasignuser.user_id',$id)
            // ->select('projectasign.*', 'projectstatus.id as status_id','projectasignuser.*','projectstatus.name as status_name','projects.name as project_name')
            // ->get();

            //   echo "<pre>";
            // print_r($data);
            // die;


            return view('admin.usersmanagement.viewteaminfo',compact('user','data'));

        }elseif($_GET['type'] == "customer"){
            $user = User::find($id);
            $data = DB::table('projectasign')
            // ->join('projectstatus', 'projectasign.work_status', '=', 'projectstatus.id')
            ->join('projects', 'projectasign.project_id', '=', 'projects.id')
            ->where('projectasign.customer_id',$id)
            ->select('projectasign.*','projects.name as project_name')
            ->get();

            //  $data = DB::table('projectasign')
            // ->join('projectstatus', 'projectasign.work_status', '=', 'projectstatus.id')
            // ->join('projects', 'projectasign.project_id', '=', 'projects.id')
            // ->where('projectasign.customer_id',$id)
            // ->select('projectasign.*', 'projectstatus.id as status_id','projectstatus.name as status_name','projects.name as project_name')
            // ->get();

            // echo "<pre>";
            // print_r($data);
            // die;

            return view('admin.usersmanagement.viewcustomerinfo',compact('user','data'));
        }else {
            abort(404);
        }
    }else{
        abort(404);
    }
}


}