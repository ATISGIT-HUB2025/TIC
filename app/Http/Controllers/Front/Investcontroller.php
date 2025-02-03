<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Invest;
use App\Models\User;
use Illuminate\Support\Facades\DB;


class Investcontroller extends Controller
{
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
           if ($request->amount > Auth::user()->wallet) {
            return response()->json([
                'errors' => ['amount' => ['Insufficient wallet balance.']]
            ], 422);
        }

            // Create investment record
            $investment = new Invest;
            $investment->userid = $user->id;
            $investment->package_id = 0;
            $investment->amount = $request->amount;
            $investment->time = 'Months';
            $investment->interest = 6;
            $investment->status = 'Y';
            $investment->type = 'business';
            $investment->completestatus = 'pending';
            $investment->save();
            // Deduct wallet balance
            $user->wallet -= $request->amount;
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