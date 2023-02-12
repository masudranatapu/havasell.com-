<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
        {{-- meta --}}
        @yield('meta')
        {{-- style --}}
        @include('frontend.layouts.header_script')
        {{-- custom style --}}
        @stack('style')
    </head>
    <body>
        {{-- header  --}}
        @if ($nav != 'no')
            <header class="header sticky-top">
                @include('frontend.layouts.header')
            </header>
        @endif
        {{-- main content  --}}
        @yield('content')
        {{-- footer script --}}
        @include('frontend.layouts.footer_script')
        {{-- custom script --}}
        @stack('script')
    </body>
</html>
