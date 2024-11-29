<?php

namespace App\Http\Controllers;

use App\Models\Producto;
use Illuminate\Http\Request;

class FutbolController extends Controller
{
    public function index (){
        $futbol = Producto::orderby('id','desc')
                                ->paginate(10);
        //return $futbol;
        
        return view ('vistas.index', compact ('futbol'));
    }

    public function create (){
        return view ('plan.create');;
    }

    public function store (Request $request){
        $futbol =new Producto();
        $futbol->title=$request->title;
        $futbol->category=$request->category;
        $futbol->content=$request->content;

        $futbol->save();

        return redirect('/cursos');
    }


    public function show ($futbol){
        $futbol = Producto::find($futbol);
        
        return view ('vistas.show', compact('futbol'));
    }

    public function edit ($futbol){
        $futbol = Producto::find($futbol);
        return view ('plan.edit', compact('curso'));
    }
    public function update (Request $request, $futbol){

        $futbol = Producto::find($futbol);
        $futbol->title=$request->title;
        $futbol->category=$request->category;
        $futbol->content=$request->content;

        $futbol->save();

        return redirect ("/cursos/{$futbol->id}");
    }

    public function destroy ($futbol){

        $futbol = Producto::find($futbol);
        $futbol->delete();
        return redirect ("/cursos");
    }
}
