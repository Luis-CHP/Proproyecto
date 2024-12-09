<?php

use App\Http\Controllers\BeisbolController;
use App\Http\Controllers\BasquetbolController;
use App\Http\Controllers\Carritocontroler;
use App\Http\Controllers\CarritoController;
use App\Http\Controllers\FutbolController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PrincipalController;
use App\Models\Futbol;
use Illuminate\Support\Facades\Auth;

/*Route::get('/', function () {
    return view('welcome');
});*/


Route::get('/', [PrincipalController::class, 'login']);
Route::get('/registro', [PrincipalController::class, 'registro']);
Route::post('/agregar',[PrincipalController::class, 'useradd']);
Route::post('/inicio', [PrincipalController::class, 'validador'])->name('login.validate');
Route::get('/inicio', [PrincipalController::class, 'inicio'])->name('inicio');
Route::get('/contacto', [PrincipalController::class, 'contacto'])->name('contacto');
//Route::get('/show', [PrincipalController::class, 'show']);
Route::post('/logout', [PrincipalController::class, 'logout'])->name('logout');



Route::resource('futbol', FutbolController::class);

Route::resource('beisbol', BeisbolController::class);

Route::resource('basquetbol', BasquetbolController::class);

Route::middleware(['auth'])->group(function () {
    Route::resource('carrito', CarritoController::class)->except(['show']);

});
//

/*

Route::middleware(['auth'])->group(function () {
    Route::post('/carrito', [CarritoController::class, 'store'])->name('carrito.store');
    Route::get('/carrito', [CarritoController::class, 'index'])->name('carrito.index');
    Route::put('/carrito/{carritoProducto}', [CarritoController::class, 'update'])->name('carrito.update');
    Route::delete('/carrito/{carritoProducto}', [CarritoController::class, 'destroy'])->name('carrito.destroy');
});

*/


//Route::resource('carrito', CarritoController::class);

//Route::get('/carrito', [CarritoController::class, 'ver'])->name('carrito.ver');
