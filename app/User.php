<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Laravel\Passport\HasApiTokens;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable, HasApiTokens;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table = 'user';
    protected $fillable = [ 'email', 
                            'encrypted_password', 
                            'token', 
                            'type'
    ];

    public $timestamps = false;
    public function getAuthPassword()
    {
        return $this->encrypted_password; // case sensitive
    }


    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    // protected $hidden = [
    //     'encrypted_password', 'token'
    // ];
}
