<?php

namespace Modules\Module\Entities;

use Illuminate\Database\Eloquent\Model;

class Module extends Model
{
    protected $guarded = ['id'];
    protected $table = 'module';

    public $timestamps = false;
}