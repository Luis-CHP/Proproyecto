<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Permisos;
use App\Models\Compras;
use App\Models\Detalles;
use App\Models\Producto;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            ProductoSeeder::class,
            CarritoSeeder::class,
            UserSeeder::class
        ]);

        User::factory(2)->create();
        Permisos::factory(3)->create();
        Producto::factory(20)->create();
    }
}
