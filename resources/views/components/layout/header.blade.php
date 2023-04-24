<!-- Parte de cabecera, fijo en lugar de componente-->
<header {{$attributes->merge(["class"=>
                           "justify-center md:justify-between h-15v bg-white
                           md:bg-cabecera flex flex-row  md:p-2
                           border border-red-400 rounded
                            items-center"])}}>
 <!-- logo -->
    <!-- img logo  para ordenador-->
    <img class='hidden md:block p-2 max-h-full w-1/4'
         src="{{asset('images/logos/enlaces_feria.png')}}" alt='Logo Enlaces'/>

    <h1 class="hidden  md:block   text-5xl md:text-4xl lg:text-5xl 2xl:text-7xl   font-mono
    text-enlaces     text-center       max-h-full overflow-hidden place-self-right w-3/4">
        {{config('parameters.year_title')}}

       <!-- img logo para móvil-->
       <img class='display md:hidden object-center max-h-full max-w-full '
            src="{{asset('images/logos/enlaces_feria_movil_withing_year.png')}} " alt="Logo Enlaces"/>
    </h1>

    @yield ("boton_volver")
@auth
        <form action="{{route ('logout')}}" method="post">
            @csrf
            <button type="submit"
                    class="bg-blue-600 text-white px-4 py-2
                        text-sm uppercase tracking-wide font-bold rounded-lg"
                    @click="ModalShowing=true"
            >
                Logout
            </button>
        </form>
    @endauth
@guest
    <button
            class="bg-blue-600 text-white px-4 py-2
                        text-sm uppercase tracking-wide font-bold rounded-lg"
            @click="ModalShowing=true"
    >
        Login
    </button>
    <card-modal :showing=ModalShowing @close="ModalShowing=false" >
        <form method="POST" action="{{ route('login') }}">
            @csrf

            <div>
                Acceso restringido a administrador, no se permiten registros
            </div>
            <!-- Email Address -->
            <div>
                <x-label for="email" :value="__('Email')"/>

                <x-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required
                         autofocus/>
            </div>

            <!-- Password -->
            <div class="mt-4">
                <x-label for="password" :value="__('Password')"/>

                <x-input id="password" class="block mt-1 w-full"
                         type="password"
                         name="password"
                         required autocomplete="current-password"/>
            </div>

            <!-- Remember Me -->
            <div class="block mt-4">
                <label for="remember_me" class="inline-flex items-center">
                    <input id="remember_me" type="checkbox"
                           class="rounded border-gray-300 text-indigo-600 shadow-sm focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50"
                           name="remember">
                    <span class="ml-2 text-sm text-gray-600">{{ __('Remember me') }}</span>
                </label>
            </div>

            <div class="flex items-center justify-end mt-4">
                @if (Route::has('password.request'))
                    <a class="underline text-sm text-gray-600 hover:text-gray-900"
                       href="{{ route('password.request') }}">
                        {{ __('Forgot your password?') }}
                    </a>
                @endif
                <x-a-href class="ml-3" href="{{route('feria-main')}}">
                    {{ __('Cancel') }}
                </x-a-href>
                <x-button class="ml-3">
                    {{ __('Log in') }}
                </x-button>
            </div>
        </form>    </card-modal>
@endguest
    <!-- Parte de cabecera, fijo en lugar de componente-->

</header>
