<?php

namespace App\Models\CRM;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customerpayment extends Model
{
    use HasFactory;



    protected $table = 'customer_payment';
    protected $fillable = [
        'customer_id',
        'amount',
        'payment_mode',
        'payment_date'
    ];


}
