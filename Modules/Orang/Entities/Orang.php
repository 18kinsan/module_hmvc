<?php

namespace Modules\Orang\Entities;

use Illuminate\Database\Eloquent\Model;

class Orang extends Model
{
    protected $guarded = ['id'];
    protected $table = 'Orang';

    public $timestamps = false;
}