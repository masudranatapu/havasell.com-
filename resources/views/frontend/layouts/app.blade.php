<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" sizes="32x32" href="{{ asset($setting->favicon_image) }}">
    <title>@yield('title')</title>
    {{-- meta --}}
    @yield('meta')
    {{-- style --}}
    @include('frontend.layouts.header_script')
    {{-- custom style --}}
    @stack('style')
    <input type="hidden" id="base_url" value="{{ URL('/') }}" />
    <!-- Google tag (gtag.js) --> <script async src="https://www.googletagmanager.com/gtag/js?id=G-6SYK9J23PG"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);} gtag('js', new Date());
        gtag('config', 'G-6SYK9J23PG');
    </script>
</head>

<body>

    {{-- header --}}
    <div class="{{ Request::routeIs('frontend.index') ? 'd-none d-lg-block' : '' }}">
        <div class="container">
            @include('frontend.layouts.header')
        </div>
    </div>

    <div class="container">
    {{-- main content --}}
    @yield('content')

    {{-- footer --}}
        @include('frontend.layouts.footer')
        @include('frontend.layouts.footer_script')
    </div>

    {{-- script --}}
    <script>
        function AddWishlist2(item, user) {

            if (user) {
                $.ajax({
                    type: "get",
                    url: "{{ route('frontend.wishlist.create') }}",
                    data: {
                        id: item,
                        user: user,
                    },
                    success: function(data) {
                        if (data.status == 'failed') {
                            toastr.error('Favorite removed successfully')
                            $("#wishlist_count").load(location.href + " #wishlist_count>*", "");
                        } else {
                            toastr.success('Favorite added successfully')

                        }
                        $("#wishlist_count").load(location.href + " #wishlist_count>*", "");
                    }
                });
            } else {
                // $(id).prop('checked', false)
                toastr.error('Please login first');
            }
        }
    </script>
    <script>
        $(document).ready(function() {
            $(".select2").select2();
        });

        function serachSubmit() {

            var city = $('#city').val();
            var category = $('#category').val();
            var subcategory = $('#subcategory').val();

            var base_url = $('#base_url').val();
            var country = $('#country').val();
            var full_url = base_url + '/ads'
            if (category != '') {
                full_url += '/' + category;
            }
            if (subcategory != '') {
                full_url += '/' + subcategory;
            }

            if (city != '') {
                full_url += '?city=' + city;
            }

            window.location.replace(full_url);


            // $('#searchForm').submit();

        }
    </script>

    {{-- custom script --}}
    @stack('script')
</body>

</html>
