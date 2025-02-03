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
        'time',
        'interest',
        'completestatus',
        'type',
        'status'
    ];


    public function package()
    {
        return $this->belongsTo(Pakeges::class, 'package_id', 'id');
    }
    
}