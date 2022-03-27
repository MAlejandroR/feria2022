<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{$title ?? config('app.name') }}</title>
    <link rel="stylesheet" href="{{asset("css/app.css")}}">
    <link rel="icon" href="{{ URL::asset('images/favicon.ico') }}" type="image/x-icon"/>
</head>

<body class="container-ppal" >
<div id="app">

<x-layout.header/>

@yield("contenido")
<!--Pie en lugar de componente, inserto el html -->
<x-layout.footer/>
{{-- @yield("script")--}}

<script src="{{asset('js/app.js')}}"></script>
</div>

</body>
</html>
