<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pakeges extends Model
{
    use HasFactory;

    protected $table = 'pakeges';
    protected $fillable = [
        'category',
        'currency',
        'formate',
        'deac',
        'ammount',
        'status',
    ];


    

}   
