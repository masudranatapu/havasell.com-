@extends('frontend.layouts.app', ['nav' => 'yes'])

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
@endpush
@section('title')
{{ __('Terms & Conditon') }}
@endsection

@section('content')

<div class="main_body">
    <div class="page_heading text-center mb-3">
        <h3>Terms & Conditions</h3>
    </div>
    <div class="page_content">
        <p>{!! $cms->terms_body !!}</p>
    </div>
</div>

@endsection

@push('script')
@endpush
