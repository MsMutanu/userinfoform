<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserInfo extends Model
{
    use HasFactory;

    public $timestamps= false;

    protected $table = 'info' ;

    protected $fillable = ['name', 'email'];
}
