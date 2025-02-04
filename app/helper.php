<?php

use App\Models\User;
use App\Models\Usertype;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Models\Info;
use Carbon\Carbon;
use App\Models\CRM\Customers;
use App\Models\Invest;
use App\Models\Pagesetting;




if (!function_exists('getCategoryTitle')) {
    /**
     * Get the category title by ID.
     *
     * @param int $categoryId
     * @return string
     */
    function getCategoryTitle($categoryId)
    {
        $category = DB::table('category')->where('id', $categoryId)->value('title');
        return $category ?? 'No Category';
    }
}   



function usertotalearning($userid){

    $mywinning = 0;
    $daily_earningT = 0;
    $earning_amountT = 0;
    $total_new_amountT = 0;
    
    
    $Mypackages = Invest::with('package')->where('userid',Auth::user()->id)->where('completestatus','pending')->get();
    foreach ($Mypackages as $key => $val) {
        $purchased_amount = $val->amount;
        $purchased_date = $val->created_at;
        $interest_percent = $val->interest;
 
        // Calculate days passed
  $days_passed = \Carbon\Carbon::parse($purchased_date)->diffInDays(now());
  
  $daily_earning = ($interest_percent / 100) * $purchased_amount;
  // Calculate earning amount
  $earning_amount = ($interest_percent / 100) * $purchased_amount * $days_passed;
  // Calculate new amount
  $new_amount = $purchased_amount + $earning_amount;
    $daily_earningT += $daily_earning;
  $earning_amountT += $earning_amount;
  if($val->firstminus == "Y"){
    $total_new_amountT += $earning_amount;
  }else{
    $total_new_amountT += $new_amount;
  }
    }
    return $total_new_amountT;
}




function total_earn_by_invest($investid){

    $mywinning = 0;
    $daily_earningT = 0;
    $earning_amountT = 0;
    $total_new_amountT = 0;
    
    
    $Mypackages = Invest::with('package')->where('id',$investid)->where('userid',Auth::user()->id)->where('completestatus','pending')->get();
    foreach ($Mypackages as $key => $val) {
        $purchased_amount = $val->amount;
        $purchased_date = $val->created_at;
        $interest_percent = $val->interest;
 
        // Calculate days passed
  $days_passed = \Carbon\Carbon::parse($purchased_date)->diffInDays(now());
  
  $daily_earning = ($interest_percent / 100) * $purchased_amount;
  // Calculate earning amount
  $earning_amount = ($interest_percent / 100) * $purchased_amount * $days_passed;
  // Calculate new amount
  $new_amount = $purchased_amount + $earning_amount;
    $daily_earningT += $daily_earning;
  $earning_amountT += $earning_amount;

  if($val->firstminus == "Y"){
    $total_new_amountT += $earning_amount;
  }else{
    $total_new_amountT += $new_amount;
  }
//   $total_new_amountT += $new_amount;
    }
    return $total_new_amountT;
}




function total_customers(){
    Customers::count();
}

function birthdayReminder() {
    $today = Carbon::today();

    $data = Customers::whereMonth('dob', $today->month)
                     ->whereDay('dob', $today->day)
                     ->count();
    return $data;
}

function today_delivery(){
    $todayDate = Carbon::today();
    $cot = Customers::whereDate('delivery_date', $todayDate)->count();
    return $cot;
}
function pagename($id)
{
    $Pagesetting = Pagesetting::where('id', $id)->first();
    return $Pagesetting->pagename;
}
function title($id)
{
    $Pagesetting = Pagesetting::where('id', $id)->first();
    return $Pagesetting->title;
}
function description($id)
{
    $Pagesetting = Pagesetting::where('id', $id)->first();
    return $Pagesetting->description;
}




function image($id)
{
    // Find the Pagesetting by ID
    $Pagesetting = Pagesetting::where('id', $id)->first();

    // Check if the Pagesetting exists and return the image URL, else return a default image
    if ($Pagesetting && $Pagesetting->image) {
        return asset('uploads/' . $Pagesetting->image);
    }

    // Return a default image if no image exists
    return asset('uploads/default-image.jpg');
}



function meta($id)
{
    $Pagesetting = Pagesetting::where('id', $id)->first();
    return $Pagesetting->meta;
}
function bradcump_title($id)
{
    $Pagesetting = Pagesetting::where('id', $id)->first();
    return $Pagesetting->bradcump_title;
}

function tag($id)
{
    $Pagesetting = Pagesetting::where('id', $id)->first();
    return $Pagesetting->tag;
}
function meta_d($id)
{
    $Pagesetting = Pagesetting::where('id', $id)->first();
    return $Pagesetting->meta_d;
}


if (!function_exists('uploadImage')) {
    function uploadImage($file, $data, $colom)
    {
        $fileName = time() . '_' . $file->getClientOriginalName();
        $file->move('uploads', $fileName);
        return $data->$colom = $fileName;
    }
}

function getusertypes()
{
    $userstype = DB::table('user_types')->where('status', 'Y')->get();
    return $userstype;
}


function getcustomers()
{
    $customer = DB::table('users')->where('is_block', 'N')->where('role', 'customer')->get(['id', 'name', 'company_name']);
    return $customer;
}

function select_project()
{
    $project = DB::table('projects')->where('status', 'Y')->get(['id', 'name']);
    return $project;
}

function select_team_types()
{
    $team = DB::table('user_types')->where('status', 'Y')->get(['id', 'name', 'type']);
    return $team;
}

function select_team_member($id)
{
    $team = DB::table('users')->where('role', 'team')->where('customer_type_id', $id)->get();
    return $team;
}


function select_team_member_info($id)
{
    $team = DB::table('users')->where('role', 'team')->where('id', $id)->first();
    return $team;
}


function customer_detail($id)
{
    $customer = DB::table('users')->where('id', $id)->first();
    if (isset($customer)) {
        return $customer->name;
    } else {
        echo "customer not found";
    }
}


function company_name_customer($id)
{
    $customer = DB::table('users')->where('id', $id)->first();
    if (isset($customer)) {
        return $customer->company_name;
    } else {
        return "customer not found";
    }
}


function getproject_name($id)
{
    $customer = DB::table('projects')->where('id', $id)->first();
    return $customer->name;
}




if (!function_exists('updateImage')) {
    function updateImage($file, $data, $colom)
    {
        $fileName = time() . '_' . $file->getClientOriginalName();
        $file->move('uploads', $fileName);
        if ($data->$colom) {
            $image_path = public_path("uploads/" . $data->$colom);
            if (file_exists($image_path)) {
                unlink($image_path);
            }
        }
        return $data->$colom = $fileName;
    }
}


function countcustomerslist()
{
    $customer = DB::table('users')->where('role', 'customer')->count();
    return $customer;
}

function blocked_customer()
{
    $customer = DB::table('users')->where('role', 'customer')->where('is_block', 'Y')->count();
    return $customer;
}

function countteammembers()
{
    $team = DB::table('users')->where('role', 'team')->count();
    return $team;
}

function team_member_blocked()
{
    $team = DB::table('users')->where('role', 'team')->where('is_block', 'Y')->count();
    return $team;
}

function projectasigncount()
{
    $projectasign = DB::table('projectasign')->count();
    return $projectasign;
}


function asign_status_get($id)
{
    $projectasign = DB::table('projectstatus')->where('id', $id)->first();
    if (isset($projectasign)) {
        return $projectasign->name;
    } else {
        return "<span class='text-danger'>Status Not Found</span>";
    }
}


function projectstatusgetall()
{
    $projectstatuscount = DB::table('projectstatus')->get(['id', 'name']);
    return $projectstatuscount;
}

function count_team_projects()
{
    $projectasign = DB::table('projectasignuser')->where('user_id', Auth::user()->id)->count();
    return $projectasign;
}

function count_customer_projects()
{
    $projectasign = DB::table('projectasign')->where('customer_id', Auth::user()->id)->count();
    return $projectasign;
}

function count_project_name()
{
    $count_project_name = DB::table('projects')->where('status', 'Y')->count();
    return $count_project_name;
}

function count_projectstatus()
{
    $count_project_name = DB::table('projectstatus')->count();
    return $count_project_name;
}

function aboutimage()
{
    $aboutdata = Info::where('id', 3)->first(['image']);
    if (isset($aboutdata->image)) {
        return $aboutdata->image;
    } else {
        return "no image";
    }
}

function phone()
{
    $data = Info::where('id', 5)->first();
    $mdata = json_decode($data->info_one);
    if ($mdata) {
        return $mdata->phone;
    } else {
        return "";
    }
}

function phone_2()
{
    $data = Info::where('id', 5)->first();
    $mdata = json_decode($data->info_one);
    if ($mdata) {
        return $mdata->phone_2;
    } else {
        return "";
    }
}

function email()
{
    $data = Info::where('id', 5)->first();
    $mdata = json_decode($data->info_one);
    if ($mdata) {
        return $mdata->email;
    } else {
        return "";
    }
}

function location()
{
    $data = Info::where('id', 5)->first();
    $mdata = json_decode($data->info_one);
    if ($mdata) {
        return $mdata->location;
    } else {
        return "";
    }
}

function twitter()
{
    $data = Info::where('id', 5)->first();
    $mdata = json_decode($data->info_one);
    if ($mdata) {
        return $mdata->twitter;
    } else {
        return "";
    }
}

function facebook()
{
    $data = Info::where('id', 5)->first();
    $mdata = json_decode($data->info_one);
    if ($mdata) {
        return $mdata->twitter;
    } else {
        return "";
    }
}




function linkedin()
{
    $data = Info::where('id', 5)->first();
    $mdata = json_decode($data->info_one);
    if ($mdata) {
        return $mdata->linkedin;
    } else {
        return "";
    }
}

function instagram()
{
    $data = Info::where('id', 5)->first();
    $mdata = json_decode($data->info_one);
    if ($mdata) {
        return $mdata->instagram;
    } else {
        return "";
    }
}

function youtube()
{
    $data = Info::where('id', 5)->first();
    $mdata = json_decode($data->info_one);
    if ($mdata) {
        return $mdata->youtube;
    } else {
        return "";
    }
}

function location_iframe()
{
    $data = Info::where('id', 5)->first();
    $mdata = json_decode($data->info_one);
    if ($mdata) {
        return $mdata->location_iframe;
    } else {
        return "";
    }
}

function meta_title()
{
    $data = Info::where('id', 5)->first();
    $mdata = json_decode($data->info_one);
    if ($mdata) {
        return $mdata->meta_title;
    } else {
        return "";
    }
}

function meta_tags()
{
    $data = Info::where('id', 5)->first();
    $mdata = json_decode($data->info_one);
    if ($mdata) {
        return $mdata->meta_tags;
    } else {
        return "";
    }
}

function meta_description()
{
    $data = Info::where('id', 5)->first();
    $mdata = json_decode($data->info_one);
    if ($mdata) {
        return $mdata->meta_description;
    } else {
        return "";
    }
}

function weblogo()
{
    $data = Info::where('id', 5)->first();
    if ($data) {
        return $data->image;
    } else {
        return "";
    }
}

function favicon()
{
    $data = Info::where('id', 5)->first();
    if ($data) {
        return $data->favicon;
    } else {
        return "";
    }
}





// function sys($request)
// {

//     $info_one = [
//         'title' => $request->title,
//         'subtitle' => $request->subtitle,
//         'description' => $request->description,
//     ];
//     $new = Info::find(7);

//     $new->info_one = json_encode($info_one);
//     $new->save();
// }


// function getteam_all($id){
//     $customer = DB::table('users')->where('role','team')->get(['id','name','type']);
//     return $customer->name;
// }


function sendwhatsapp_message($mobile,$message){
    $curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://wapi.nationalsms.in/wapp/v2/api/send?apikey=2f233ed1a046484f9bfa0f985e4d0f0b&mobile='.$mobile.'&msg='.$message.'',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
));
$response = curl_exec($curl);

curl_close($curl);
$result = json_decode($response);
return $result;

}