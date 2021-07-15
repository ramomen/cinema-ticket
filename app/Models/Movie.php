<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    use HasFactory;
    protected $table = 'movies';
    protected $primaryKey = 'id';
    public $timestamps = false;



    protected $fillable = [
        'id',
        'title',
        'description',
        'Language',
        'release_date',
        'country',
        'genre'
    ];
}
