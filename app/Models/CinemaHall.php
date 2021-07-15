<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CinemaHall extends Model
{
    use HasFactory;
    protected $table = 'cinema_halls';
    protected $primaryKey = 'id';
    public $timestamps = false;



    protected $fillable = [
        'id',
        'name',
        'total_seats',
        'cinema_id'
    ];

    public function cinema(){
        return $this->hasMany(Cinema::class,'cinema_id','id'); 
    }

}
