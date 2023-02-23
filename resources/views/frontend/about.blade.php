@extends('frontend.layouts.app')
@section('meta')
<meta property="title" content="{{ $meta_title }}" />
<meta property="description" content="{{ $meta_description }}" />
<meta property="keywords" content="{{ $meta_keywords }}" />
<meta property="og:title" content="{{ $meta_title }}" />
<meta property="og:description" content="{{ $meta_description }}" />
<meta property="og:keywords" content="{{ $meta_keywords }}" />
<meta property="og:image" content="{{ asset($meta_image) }}" />
@endsection
@section('title')
{{ __('about') }}
@endsection
@section('content')
<div class="row g-0">
    <div class="col-12">
        <div class="main_body">
            <div class="page_heading text-center mb-3">
                <h3>About Us</h3>
            </div>
            <div class="page_content">
                <div class="about_img text-center mb-3">
                    <img src="{{ asset($cms->about_background) }}" class="rounded border shadow-sm" alt="">
                </div>
                <p>{!! $cms->about_body !!}</p>

            </div>
        </div>
    </div>
</div>
@endsection
