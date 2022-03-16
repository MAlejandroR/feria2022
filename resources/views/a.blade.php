@extends('layout')
@section('contenido')
    <div id="app">
        @auth Si estoy atenticado pongo opciones de administración
        <x-layout.nav class="bg-fondo1"><!--h-5v-->
            @isset($msj)
                <div class="text-2xl text-white">{{$msj}}</div>
            @endisset
        </x-layout.nav>

            <a-feria-main route_form="{{route('empresas.ponencias')}}"/>
            </feria-main>

        @endauth
        @guest
                <a-feria-main route_form="{{route('empresas.ponencias')}}"/>

        @endguest
    </div>
@endsection
