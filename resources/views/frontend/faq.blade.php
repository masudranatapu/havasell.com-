@extends('frontend.layouts.app', ['nav' => 'yes'])

@section('title') {{ $data['title'] ?? 'Page header' }} @endsection
@section('meta')
<meta property="title" content="{{ $meta_title }}" />
<meta property="description" content="{{ $meta_description }}" />
<meta property="keywords" content="{{ $meta_keywords }}" />
<meta property="og:title" content="{{ $meta_title }}" />
<meta property="og:description" content="{{ $meta_description }}" />
<meta property="og:keywords" content="{{ $meta_keywords }}" />
<meta property="og:image" content="{{ asset($meta_image) }}" />
@endsection

@push('style') @endpush
@section('content')

<div class="row">
    <div class="col-12">
        <div class="main_body">
            <div class="page_heading text-center mb-3">
                <h3>Faq</h3>
            </div>
            <div class="faq_question">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8">
                        <div class="accordion" id="accordionExample">
                            @foreach ($faqs as $key => $row)
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="heading_{{ $key }}">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapse_{{ $key }}" aria-expanded="true"
                                        aria-controls="collapse_{{ $key }}">
                                        {{ $row->question }}
                                    </button>
                                </h2>
                                <div id="collapse_{{ $key }}"
                                    class="accordion-collapse collapse {{ $key == 0 ? 'show' : '' }}"
                                    aria-labelledby="heading_{{ $key }}" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <p>{{ $row->answer }}</p>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

@endsection

@push('script')

@endpush