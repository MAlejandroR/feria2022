@extends("layout")

@section('boton_volver')
    <x-form.a-href href="{{route('feria-main')}}">
        Volver
    </x-form.a-href>
@endsection

@section('contenido')
    @empty($empresas)
        <h1 class="text-yellow-800 text-3xl">
            Actualmente no hay empresas insertadas
        </h1>
    @endempty

    @isset($empresas)
        <listado-empresas empresas='@json($empresas)' />
    @endisset
@endsection





