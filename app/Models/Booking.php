<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    use HasFactory;
    protected $table = 'bookings';
    protected $primaryKey = 'id';
    public $timestamps = false;


    protected $fillable = [
        'id',
        'number_of_seats',
        'timestamp',
        'status',
        'user_id',
        'show_id'
    ];

    public function user(){
        return $this->hasMany(User::class,'user_id','id'); 
    }
    public function show(){
        return $this->hasMany(show::class,'show_id','id'); 
    }
}
