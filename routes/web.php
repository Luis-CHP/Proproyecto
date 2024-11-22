<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PrincipalController;


/*Route::get('/', function () {
    return view('welcome');
});*/


Route::get('/', [PrincipalController::class, 'login']);
Route::post('/inicio', [PrincipalController::class, 'validador'])->name('login.validate');
Route::get('/inicio', [PrincipalController::class, 'inicio']);
Route::get('/show', [PrincipalController::class, 'show']);
