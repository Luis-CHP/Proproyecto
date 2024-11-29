<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BeisbolController extends Controller
{
    public function show(){
        return view("vistas.shows");
    }
}
