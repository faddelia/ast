<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserOrderContactInformation extends Model
{
    public function user()
    {
    	return $this->belongsTo('App\User');
    }
}
