@extends('frontend.layouts.app', ['nav' => 'no'])

@section('meta')
<meta property="title" content="{{ $meta_title }}" />
<meta property="description" content="{{ $meta_description }}" />
<meta property="keywords" content="{{ $meta_keywords }}" />
<meta property="og:title" content="{{ $meta_title }}" />
<meta property="og:description" content="{{ $meta_description }}" />
<meta property="og:keywords" content="{{ $meta_keywords }}" />
<meta property="og:image" content="{{ asset($meta_image) }}" />
@endsection

@push('style')
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
@endpush
@section('title')
{{ config('app.name') }}
@endsection
@php
$country = getCountryCode();
@endphp

@section('content')
<div class="row g-0">
    <div class="col-lg-3">
        <div class="sidebar_left overflow-hidden">
            <div class="heading1 text-center p-2">
                <div class="search-style mb-4">
                    <form action="{{ route('frontend.search') }}" method="get">
                        <div class="input-group">
                            <input type="text" name="search" id="search" class="form-control" placeholder="Search..."
                                required>
                            <button type="submit" class="text-input-group"><i class="la la-search"></i></button>
                        </div>
                    </form>
                </div>
                <div class="mt-5 latest_post mb-3">
                    <div class="mb-3">
                        <h3>Latest Post</h3>
                    </div>
                    <ul>
                        @foreach ($ads as $key => $value)
                        <li>
                            <a href="{{ route('frontend.details', $value->slug) }}">{{ $value->title }}</a>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-9">
        <div class="main_body">
            <div class="row g-2">

                @foreach ($categories as $key => $item)
                @if(isset($item->subcategories) && $item->subcategories->count() > 0)
                <div class="col-lg-6 col-xl-4">
                    <div class="category_wrapper">
                        <div class="category_wrap text-center">
                            <div class="category_heading">
                                <h5>{{ __($item->name) }}</h5>
                                <span>({{ $item->ads->count() }} ads)</span>
                            </div>
                        </div>
                        <div class="category_list">
                            <ul class="list-group">
                                @foreach ($item->subcategories as $scat)
                                <li>
                                    <a
                                        href="{{ route('frontend.search', ['category' => $item->slug, 'subcategory' => $scat->slug]) }}">
                                        {{ __($scat->name) }}

                                        <span class="float-end">({{ $scat->ads->count() }})</span>
                                    </a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                @endif
                @endforeach

            </div>
        </div>
    </div>
</div>

<!-- ------------------ Mobile View Desing Start ------------------ -->
<div class="mobile-view d-block d-lg-none">
    <div class="mobile_header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-5">
                    <div class="mobile_heade_left">
                        <div class="site_logo">
                            <a class="header_logo" name="logoLink" href="{{ route('frontend.index') }}">H</a>
                            <a href="{{url('/')}}">{{ config('app.name') }}</a>
                        </div>
                    </div>
                </div>
                <div class="col-7">
                    <div class="mobile_heade_right float-end">
                        <ul id="wishlist_count">
                            <li><a href="{{ route('frontend.post.create') }}">Post</a></li>
                            @if (auth('user')->check())
                            <li><a href="{{ route('user.profile') }}">Account</a></li>
                            @else
                            <li><a href="{{ route('signin') }}">Account</a></li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="mobile_body">
            <form action="{{ route('frontend.search') }}" method="get" class="mb-3 mt-3 p-2">
                <div class="input-group">
                    <input type="text" name="search" id="search" class="form-control" placeholder="Search..." required>
                    <button type="submit" class="input-group-text"><i class="la la-search"></i></button>
                </div>
            </form>

            <div class="accordion_item mb-4">
                <div class="accordion" id="accordionExample">
                    @foreach ($categories as $key => $item)
                    @if (!in_array($item->id, ['10', '14', '15']))
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="heading_{{ $item->id }}">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapse_{{ $item->id }}" aria-expanded="false"
                                aria-controls="collapse_{{ $item->id }}">
                                {{ __($item->slug) }}
                            </button>
                        </h2>
                        <div id="collapse_{{ $item->id }}" class="accordion-collapse collapse"
                            aria-labelledby="heading_{{ $item->id }}" data-bs-parent="#accordionExample">
                            <div class="accordion_body">
                                <ul>
                                    @foreach ($item->subcategories as $scat)
                                    <li>
                                        <a
                                            href="{{ route('frontend.search', ['category' => $item->slug, 'subcategory' => $scat->slug]) }}">{{
                                            __($scat->name) }}</a>
                                    </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                    @endif
                    @endforeach

                    @foreach ($categories as $key => $item)
                    @if (in_array($item->id, ['10', '14', '15']))
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="heading_{{ $item->id }}">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapse_{{ $item->id }}" aria-expanded="false"
                                aria-controls="collapse_{{ $item->id }}">
                                {{ __($item->slug) }}
                            </button>
                        </h2>
                        <div id="collapse_{{ $item->id }}" class="accordion-collapse collapse"
                            aria-labelledby="heading_{{ $item->id }}" data-bs-parent="#accordionExample">
                            <div class="accordion_body">
                                <ul>
                                    @foreach ($item->subcategories as $scat)
                                    <li>
                                        <a
                                            href="{{ route('frontend.search', ['category' => $item->slug, 'subcategory' => $scat->slug]) }}">{{
                                            __($scat->name) }}</a>
                                    </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                    @endif
                    @endforeach
                </div>
            </div>

        </div>
    </div>

    @include('frontend.layouts.footer')
</div>
<!-- ------------------ Mobile View Desing End ------------------ -->

@endsection




@push('script')
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script>
    $(function() {
            $("#datepicker").datepicker({
                dateFormat: 'dd-mm-yy',
                onSelect: function(date, datepicker) {
                    if (date != "") {
                        alert("Selected Date: " + date);
                        // $('#date_select').val(date);
                        // $('#eventForm').submit();
                        var base_url = $('#base_url').val();
                        var country = $('#country').val();
                        var full_url = base_url + '/ads/' + country + '/events/?date=' + date
                        window.location.replace(full_url);
                    }
                }
            });
        });
        $(document).ready(function() {
            $(".select2").select2();
        });
</script>
@endpush