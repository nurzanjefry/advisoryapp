<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Listing extends Model
{   
    protected $table = 'listing';
    
    protected $fillable = ['list_name', 
                            'distance', 
                            'user_id'
                        ];

    public $timestamps = false;
}
