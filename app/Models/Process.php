<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Process extends Model
{
    use HasFactory;

    protected $table = 'process';
    protected $fillable = [
        'title',
        'sub_title',
        'icon',
        'status',
    ];
}
