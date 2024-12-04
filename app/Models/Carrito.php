<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Carrito extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id', // Campos permitidos para asignación masiva
    ];
    public function user()
{
    return $this->belongsTo(User::class);
}

    // Relación con CarritoProducto
    public function carritoProductos()
    {
        return $this->hasMany(CarritoProducto::class);
    }

    
}
