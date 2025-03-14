<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Invest;
use App\Models\Withdraw;
use App\Models\User;
use Illuminate\Support\Facades\DB;

use Illuminate\Support\Facades\Session;


class Investcontroller extends Controller
{

    public function referrallist(Request $request){

        $users = User::with(['investments'])
        ->where('refer_by', Auth::id())
        ->orderBy('id', 'desc')
        ->get();

        
        return view('front.referrallist',compact('users'));
    }

    public function deposithistory(Request $request){
        return view('front.deposithistory');
    }

    public function withdrawRequest(Request $request, $investid)
{
    $invest = Invest::findOrFail($investid);
    
    // Create a new withdraw request
    
    $request->validate([
        'amount' => 'required|numeric',
    ], [
        'amount.required' => 'The amount field is required.',
        'amount.numeric'  => 'The amount must be a number.',
    ]);


    if (Session::get('otp_verify') !== "Y") {
        return redirect()->back()->with('error', 'Please verify OTP before making a withdrawal request.');
    }

     $totalwithdraw = Withdraw::where('invest_id',$investid)->where('userid',Auth::user()->id)->where('amount_cut','Y')->sum('amount');
     $availble =  total_earn_by_invest($investid) - $totalwithdraw ;
     
    if ($request->amount > $availble) {
        return redirect()->back()->with('error', 'Insufficient Earning Balance. You can withdraw only Rs.' . $availble);
    }

    $invest->firstminus == "Y";
    
    $new = new Withdraw();
    $new->userid = $invest->userid;
    $new->invest_id = $invest->id;
    $new->amount_cut = 'Y';
    $new->package_id = $invest->package_id;
    $new->amount = $request->amount; // Make sure to validate this in the request
    $new->reason = $request->reason; // Optional reason for withdrawal
    $new->status = 'pending'; // Default status
    $new->save();
    $invest->save();


    Session::forget('otp_verify');
    
    return redirect()->back()->with('success','Withdraw request submitted successfully');
}

    public function investnow(Request $request,$investType,$id){


        if ($investType == "normel") {
            return view('front/invest/normel');
        }
        elseif ($investType == "business") {

            $packageid = $id;
            $package = DB::table('pakeges')->where('id', $packageid)->first();
            if(!$package){
                abort(404);
            }
            return view('front/invest/business',compact('packageid','package'));
        }
    }

    
    public function buynormelpackage(Request $request)
{
    try {
        // Validate investment amount
        $request->validate([
            'amount' => 'required|numeric|min:1000|max:9999',
        ], [
            'amount.required' => 'The amount field is required.',
            'amount.numeric'  => 'The amount must be a number.',
            'amount.min'      => 'The minimum amount is 1000.',
            'amount.max'      => 'The maximum amount is 9999.',
        ]);

        $user = auth()->user();

        // Check if user has enough wallet balance
        if ($request->amount > $user->wallet) {
            return response()->json([
                'errors' => ['amount' => ['Insufficient wallet balance.']]
            ], 422);
        }

        // Handle referral commission
        $refer_by = $user->refer_by;

        $commission = 0;

        if ($refer_by) {
            $amount = $request->amount;
            $referpercentage = refer_amount() ?? 0; // Assuming a fixed 3% referral percentage
            $referrer = User::find($refer_by);

            if ($referrer) {
                $commission += ($amount * $referpercentage) / 100;
                $referrer->wallet += $commission; 
                $referrer->refer_wallet += $commission; 
                $referrer->save();
            }
        }

        // Create investment record
        Invest::create([
            'userid' => $user->id,
            'package_id' => 0,
            'amount' => $request->amount,
            'time' => 'Months',
            'interest' => 6,
            'status' => 'Y',
            'type' => 'normal',
            'completestatus' => 'pending',
        ]);

        // Deduct wallet balance
        $user->wallet -= $request->amount;
        $user->refer_by_wallet += $commission;
        $user->save();

        return response()->json([
            'status'  => 'success',
            'message' => 'Well done! 🌟 Your funds are now invested. Let’s grow together!',
        ], 200);

    } catch (ValidationException $e) {
        return response()->json([
            'errors' => $e->errors()
        ], 422);
    }
}

    

    public function buybusinesspackage(Request $request){


        try {
            $package = DB::table('pakeges')->where('id', $request->package_id)->first();

            if (!$package) {
                return response()->json([
                    'status'  => 'error',
                    'message' => 'Invalid package selected.',
                ], 422);
            }
            
            $request->validate([
                'amount' => 'required|numeric|in:'.$package->ammount,
            ], [
                'amount.required' => 'The amount field is required.',
                'amount.numeric'  => 'The amount must be a number.',
                'amount.in'       => 'The amount must be exactly '.$package->ammount.'.',
            ]);
            
    
            $user = auth()->user();
            // Check if the user has enough wallet balance
            // Check if user has enough wallet balance
            if ($request->amount > Auth::user()->wallet) {
                return response()->json([
                    'errors' => ['amount' => ['Insufficient wallet balance.']]
                ], 422);
            }




             // Handle referral commission
        $refer_by = $user->refer_by;

        $commission = 0;


        if ($refer_by) {
            $amount = $request->amount;
            $referpercentage = refer_amount() ?? 0;
            $referrer = User::find($refer_by);

            if ($referrer) {
                $commission += ($amount * $referpercentage) / 100;
                $referrer->wallet += $commission;
                $referrer->refer_wallet += $commission; 
                $referrer->save();
            }
        }

        
            // Create investment record
            $investment = new Invest;
            $investment->userid = $user->id;
            $investment->package_id = $package->id;
            $investment->amount = $request->amount;
            $investment->time = $package->formate;
            $investment->type = 'business';
            $investment->completestatus = 'pending';
            $investment->interest = $package->interest_rate;
            $investment->status = 'Y';
            $investment->save();
            // Deduct wallet balance
            $user->wallet -= $request->amount;
            $user->refer_by_wallet += $commission;
            $user->save();
            return response()->json([
                'status'  => 'success',
                'message' => 'Well done! 🌟 Your funds are now invested. Let’s grow together!.',
            ], 200);
    
        }catch (ValidationException $e) {
            return response()->json([
                'errors' => $e->errors()
            ], 422);
        }
    }
    
}