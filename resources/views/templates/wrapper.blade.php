<!DOCTYPE html>
<html>
    <head>
        <title>{{ config('app.name', 'Meuchatinteligente')}}</title>
        @section('meta')
            <meta charset="utf-8"/>
            <link rel="icon" href="/favicon.ico"/>
            <meta name="viewport" content="width=device-width,initial-scale=1"/>
            <meta name="theme-color" content="#000000"/>
            <link rel="apple-touch-icon" href="/logo192.png"/>
            <link rel="manifest" href="/manifest.json"/>
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"/>
            <link rel="stylesheet" charset="UTF-8" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.css"/>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick-theme.min.css"/>
            <script defer="defer" src="/static/js/main.1ef309d2.js"></script>
            <link href="/static/css/main.e419d225.css" rel="stylesheet">
        @show
        <style>
            @import url('//fonts.googleapis.com/css?family=Rubik:300,400,500&display=swap');
            @import url('//fonts.googleapis.com/css?family=IBM+Plex+Mono|IBM+Plex+Sans:500&display=swap');
        </style>

        @yield('assets')
    </head>
    <body class="{{ $css['body'] ?? 'bg-neutral-50' }}">
        @section('content')
            @yield('above-container')
            @yield('container')
            @yield('below-container')
        @show
    </body>
</html>
