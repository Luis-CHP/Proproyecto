@extends('components.app-layout')

@section('content')

<h1>Bienvenido a la página de Equipamiento</h1>
<ul>
@foreach ($productos as $producto)
    <li>
        <a href="{{ route('futbol.show', $producto) }}">
            {{ $producto->nombre }} <!--Aqui lo puedo cambiar para que se muestre lo que quiero-->
        </a>
    </li>
@endforeach
</ul>

<!-- Paginación -->
{{ $productos->links() }}

@endsection
