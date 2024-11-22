<?php

namespace App\Http\Controllers;
//use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class PrincipalController extends Controller
{
    /*public function index(Request $request){
        ;
    }*/
    public function login(){
            return view('vistas.login');
        }

    public function validador(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();
            return redirect()->route('inicio');
        }

        return back()->withErrors([
            'email' => 'Las credenciales no coinciden.',
        ]);
    }

    public function inicio(){
        return view("vistas.inicio");
    }
    
    public function show(){
        return view("vistas.show");
    } 
}
