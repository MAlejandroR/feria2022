<div class = "flex flex-row justify-start bg-fondo1 h5 items-center" >
    <form action="{{route('empresas.create')}}" METHOD="get">
        <button
            type='submit' class="boton2">
            Añadir Empresa
        </button>
    </form>
    <form action="{{route('empresas.index')}}" METHOD="get">
        <button
            type='submit' class="boton2">
            Ver Empresas
        </button>
    </form>
</div>
