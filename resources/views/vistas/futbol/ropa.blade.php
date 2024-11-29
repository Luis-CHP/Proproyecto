@extends('components.app-layout')

@section('content')

<h1>Bienvenido a la página de Ropa</h1>
<ul>
@foreach ($productos as $producto)
    <li>
        <a href="{{ route('futbol.show', $producto) }}">
            {{ $producto->nombre }} <!-- Muestra el nombre del producto -->
        </a>
    </li>
@endforeach
</ul>

<!-- Paginación -->
{{ $productos->links() }}

@endsection
