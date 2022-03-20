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
    <!-- img logo para móvil-->
    <img class='display md:hidden object-center max-h-full max-w-full '
         src="{{asset('images/logos/enlaces_feria_movil.png')}} " alt="Logo Enlaces"/>

    <h1 class="hidden  md:block   text-5xl md:text-4xl lg:text-5xl xl:text-8xl   font-mono
    text-enlaces     text-center       max-h-full overflow-hidden place-self-right w-3/4">
        V Feria de Empleo 2022
    </h1>

    @yield ("boton_volver")
<!-- Parte de cabecera, fijo en lugar de componente-->

</header>
