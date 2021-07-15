<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cinema extends Model
{
    use HasFactory;
    protected $table = 'cinemas';
    protected $primaryKey = 'id';
    public $timestamps = false;



    protected $fillable = [
        'id',
        'name',
        'total_cinema_halls',
        'city_id'
    ];

    public function city(){
        return $this->hasMany(City::class,'city_id','id'); 
    }

}
