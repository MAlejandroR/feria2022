@extends('layout')
@section('contenido')
    <div id="app">
        @auth <!--Si estoy atenticado pongo opciones de administración-->
        <x-layout.nav class="bg-fondo1"><!--h-5v-->
            @isset($msj)
                <div class="text-2xl text-white">{{$msj}}</div>
            @endisset
        </x-layout.nav>
        <div class="h-70v overflow-y-auto flex flex-row ">
            <feria-main route_form="{{route('empresas.ponencias')}}"/>
            </feria-main>
        </div>
        @endauth
        @guest
            <div class="h-75v overflow-y-auto flex flex-row ">
                <feria-main route_form="{{route('empresas.ponencias')}}"/>
            </div>

        @endguest
    </div>
@endsection
