<?php

namespace Modules\Users\Entities;

use Illuminate\Database\Eloquent\Model;

class Users extends Model
{
    protected $guarded = ['id'];
    protected $table = 'users';

    public $timestamps = false;
}