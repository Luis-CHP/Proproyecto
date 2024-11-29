@extends('components.app-layout')

@section('content')

<a href="{{ route('futbol.index', ['categoria' => $futbol->categoria]) }}">Volver</a>
    <h1>Titulo: {{$futbol->categoria}}</h1>
    
    <p>
    
        <b> categoria:</b> {{$futbol->categoria}}
    </p>
    
    <p>
        {{$futbol->content }}
    </p>
    
    <a href="{{route('futbol.edit', $futbol)}}" > Editar
    </a>
    
    <form action="{{route('futbol.destroy', $futbol->id)}}" method="POST">
        @csrf
        @method('DELETE')
        <button type="submit">
            Eliminar categoria
        </button>
    </form>
    
    @endsection