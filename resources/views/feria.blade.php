@extends('layout')
@section('contenido')
    <div id="app" class="overflow-hidden">
        @auth <!--Si estoy atenticado pongo opciones de administración-->
        <x-layout.nav class="bg-fondo1"><!--h-5v-->
            @isset($msj)
                <div class="text-2xl text-white">{{$msj}}</div>
            @endisset
        </x-layout.nav>
        <div class="h-70v overflow-y-auto flex flex-row ">
            <feria-main route_form="{{route('empresas.ponencias')}}"/>

        </div>
        @endauth
        @guest
                <div class="h-75v overflow-y-auto flex flex-row ">
                    <feria-main route_form="{{route('empresas.ponencias')}}"/>
                </div>

                <button
                        class="bg-blue-600 text-white px-4 py-2
                        text-sm uppercase tracking-wide font-bold rounded-lg"
                        @click="ModalShowing=true"
                >
                    Login
                </button>
                <card-modal :showing=ModalShowing @close="ModalShowing=false" >
                              <form action="{{route('login')}}"method="post">
                                  @csrf
                                  <input type="text" name="email"  placeholder="email" id="">
                                  <input type="text" name="password" placeholder="password" id="">
                                  <input type="submit" value="Login">
                              </form>
                </card-modal>


        @endguest
    </div>
@endsection
