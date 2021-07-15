<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\MovieRequest;
use App\Models\Movie;
use App\Models\Show;



class MovieController extends Controller
{
    
    public function _contructor(Request $request)
    {
       $this->middleware('auth:api')->except('index','show');
    }

    public function index (Request $request)
    {
        return Movie::all();
    }

    public function show (Request $request,$id)
    {
        $result = Show::where('movie_id',$id)->get();
        return $result;
    }

    public function store(MovieRequest $request)
    {
        $movie = new Movie;
        $movie->title = $request->title;
        $movie->description = $request->description;
        $movie->duration = $request->duration;
        $movie->language = $request->language;
        $movie->release_date = $request->release_date;
        $movie->country = $request->country;
        $movie->genre = $request->genre;
        $movie->save();
        
        return $request->post();
    }
}
