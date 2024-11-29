@extends('components.app-layout')

@section('content')

<h1>Bienvenido a la página principal de ropas</h1>
    <a href="{{route('futbol.create') }}">
        NOSEE
    </a>
    <ul>
    @foreach ($futbol as $fut)
        <li>
            <a href= "{{route('futbol.show', $fut)}}">
                {{ $fut->categoria}}

            </a>
        </li>

    @endforeach
    </ul>
    <p>Aquí encontrarás una variedad de cursos para mejorar tus habilidades.</p>

    {{ $futbol->links() }}

@endsection