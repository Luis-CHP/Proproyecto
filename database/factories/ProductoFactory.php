<?php

namespace Database\Factories;

use App\Models\Producto;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductoFactory extends Factory
{
    protected $model = Producto::class;

    public function definition()
    {
        return [
            'nombre' => $this->faker->word, // Nombre aleatorio
            'descripcion' => $this->faker->sentence, // Oración aleatoria
            'precio' => $this->faker->randomFloat(2, 10, 1000), // Precio entre 10 y 1000
            'categoria' => $this->faker->randomElement(['ropa', 'accesorios', 'equipamiento']), // Categorías posibles
            'deporte' => $this->faker->randomElement(['fútbol', 'básquetbol', 'tenis', 'natación']), // Deportes posibles
        ];
    }
}
