<div class="h-10v flex flex-row bg-enlaces justify-between">
    <div class="font-mono text-1xl flex flex-col justify-start p-2">
        © Copyright - CPIFP Los Enlaces
    </div>
    <div>
        C/Jarque de Moncayo nº 10 - 50012 - ZARAGOZA - Tlfn: 976 300 804 - Fax: 976 314 403
    </div>
</div>

@if (Route::has('login'))
    <div class="flex flex-row justify-around p-2 items-center text-white">
        @auth
            <div class="flex flex-col justify-start">
                Administrador {{auth()->user()->name}}
                <form action={{route('logout')}} method="POST">
                    @csrf
                    <button
                            class=" text-xl text-white  rounded border border-white p-1 bg-fondo"> {{__('logout')}}
                    </button>
                    <img class="visible md:invisible" type="submit" src="{{'icon/login.png'}}">

                </form>
            </div>
        @else
            <a href="{{ route('login') }}" class="boton1">{{__("Login")}}</a>
            <a href="{{ route('login') }}" class=" block md:hidden ">
                <img class="w-1/4 h:1/5 " src="{{asset('storage/icon/login.png')}}" alt="{{__('Login')}}">
            </a>
        @endauth
    </div>
    @endif
    {{--        <slot></slot>--}}
    </div>
