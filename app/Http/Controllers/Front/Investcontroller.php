<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class Investcontroller extends Controller
{
    public function investnow(Request $request,$investType,$id){
        if ($investType == "normel") {
            return view('front/invest/normel');
        }
    }
    public function buynormelpackage(Request $request){
        try {
            // Validate the request
            $request->validate([
                'amount' => 'required|numeric|min:1000|max:9999',
            ], [
                'amount.required' => 'The amount field is required.',
                'amount.numeric'  => 'The amount must be a number.',
                'amount.min'      => 'The minimum amount is 1000.',
                'amount.max'      => 'The maximum amount is 9999.',
            ]);

            // Check if user has enough wallet balance
            if ($request->amount > Auth::user()->wallet) {
                return response()->json([
                    'errors' => ['amount' => ['Insufficient wallet balance.']]
                ], 422);
            }

            // Process the amount update (if needed, add logic to deduct balance)
            return response()->json(['success' => 'Amount updated successfully!'], 200);
        } catch (ValidationException $e) {
            return response()->json([
                'errors' => $e->errors()
            ], 422);
        }

    }
}