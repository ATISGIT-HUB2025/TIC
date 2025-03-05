<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Invest extends Model
{
    use HasFactory;

    protected $table = 'invested';
    protected $fillable = [
        'userid',
        'package_id',
        'amount',
        'firstminus',
        'time',
        'interest',
        'completestatus',
        'admin_added',
        'type',
        'status'
    ];


    public function package()
    {
        return $this->belongsTo(Pakeges::class, 'package_id', 'id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'userid', 'id');
    }
    
    
}