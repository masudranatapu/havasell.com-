@extends('frontend.layouts.app', ['nav' => 'yes'])
@section('meta')

@endsection

@push('style')
    <link rel="stylesheet" href="{{ asset('image_uploader/dist/image-uploader.min.css') }}">
    <style>
        .select2-container--default .select2-selection--single .select2-selection__arrow {
            top: 5px !important;
        }
        .select2-container .select2-selection--single {
            height: 35px;
        }
    </style>
@endpush

@section('title')
    {{ __('Post') }}
@endsection

@section('breadcrumb')
    <ul>
        <li>{{ $ad_type->name }} ></li>
        <li>{{ $category->name }} ></li>
        <li>{{ $subCategory->name }}</li>
    </ul>
@endsection

@section('content')
    <div class="main_body pt-5 pb-5">
        <div class="container">
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <div class="ad_post_form">
                <form action="{{ route('frontend.post.store') }}" method="post" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="ad_type" value="{{ $ad_type->slug }}">
                    <input type="hidden" name="ad_type_id" value="{{ $ad_type->id }}">
                    <input type="hidden" name="category_id" value="{{ $category->id }}">
                    <input type="hidden" name="subcategory_id" value="{{ $subCategory->id }}">
                    {{-- <h4 class="text-center mb-4 mt-4 bg-light">{{ $subCategory->name }}</h4> --}}
                    @if ($ad_type->slug == 'service-offered')
                        <h5 class="mb-4"><strong>Please be certain your ad is legal, local, and conforms with our Terms of
                                Use</strong><a class="text-success" href="#">[?]</a></h5>
                        <h6 class="mb-5">No URLs, links, or web addresses in your text or image please.</h6>
                    @endif
                    <div class="row">
                        <div
                            class="
                            @if (
                                $ad_type->slug == 'service-offered' ||
                                    $ad_type->slug == 'housing-wanted' ||
                                    $ad_type->slug == 'housing-offered' ||
                                    $ad_type->slug == 'engagement-offered' ||
                                    $ad_type->slug == 'community' ||
                                    $ad_type->slug == 'job-offered' ||
                                    $ad_type->slug == 'job-wanted') col-md-5
                            @else
                               col-md-4 @endif

                        ">
                            <div class="mb-3">
                                <label for="title" class="form-label text-success">posting title <span class="text-danger">*</span></label>
                                <input type="text" name="title" id="title" value="{{ old('title') }}"
                                    class="form-control" required>
                            </div>
                        </div>
                        @if (
                            $ad_type->slug == 'for-sale-by-owner' ||
                                $ad_type->slug == 'for-sale-by-dealer' ||
                                $ad_type->slug == 'wanted-by-owner' ||
                                $ad_type->slug == 'wanted-by-dealer' ||
                                $ad_type->slug == 'event-class')
                            <div class="col-md-2">
                                <div class="mb-3">
                                    <label for="price" class="form-label text-success">Price <small
                                            class="text-dark">$</small>
                                    </label>
                                    <input type="number" name="price" id="price" value="{{ old('price') }}"
                                        class="form-control">
                                </div>
                            </div>
                        @endif
                        <div
                            class="
                                @if (
                                    $ad_type->slug == 'service-offered' ||
                                        $ad_type->slug == 'housing-wanted' ||
                                        $ad_type->slug == 'housing-offered' ||
                                        $ad_type->slug == 'engagement-offered' ||
                                        $ad_type->slug == 'job-wanted' ||
                                        $ad_type->slug == 'community' ||
                                        $ad_type->slug == 'job-offered') col-md-5
                                @else
                                    col-md-4 @endif
                            ">
                            <div class="mb-3">
                                <label for="city" class="form-label">Location ​​or neighborhood</label>
                                <input type="text" name="city" id="city" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="mb-3">
                                <label for="postcode" class="form-label">Postal code</label>
                                <input type="number" name="postcode" id="postcode" value="{{ old('postcode') }}"
                                    class="form-control">
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <span class="text-dark">Only one description per posting.</span><br />
                                <label for="description" class="form-label text-success">description <span class="text-danger">*</span></label>
                                <textarea name="description" id="description" cols="30" rows="5" class="form-control" style="height: 150px;"
                                    required>{{ old('description') }}</textarea>
                            </div>
                        </div>
                        <div class="input-field mb-3">
                            <label class="active">{{ __('upload_photos') }}</label>
                            <div id="multiple_image_upload" class="input-images-2" style="padding-top: .5rem;"></div>
                        </div>
                    </div>

                    {{-- For Job --}}
                    @if ($ad_type->slug == 'job-offered')
                        @include('frontend.post.pages.job-offered')
                    @endif
                    <!-- gig/engagement offered -->

                    @if ($ad_type->slug == 'engagement-offered')
                        @include('frontend.post.pages.engagement-offered')
                    @endif
                    <!-- resume / job wanted -->
                    @if ($ad_type->slug == 'job-wanted')
                        @include('frontend.post.pages.job-wanted')
                    @endif

                    <!-- housing offered -->
                    @if ($ad_type->slug == 'housing-offered')
                        @include('frontend.post.pages.housing-offered')
                    @endif

                    <!-- housing wanted -->
                    @if ($ad_type->slug == 'housing-wanted')
                        @include('frontend.post.pages.housing-wanted')
                    @endif
                    <!-- for-sale-by-owner -->
                    @if ($ad_type->slug == 'for-sale-by-owner')
                        @include('frontend.post.pages.for-sale-by-owner')
                    @endif

                    {{-- for-sale-by-dealer --}}

                    @if ($ad_type->slug == 'for-sale-by-dealer')
                        @include('frontend.post.pages.for-sale-by-dealer')
                    @endif
                    @if ($ad_type->slug == 'wanted-by-owner')
                        @include('frontend.post.pages.wanted-by-owner')
                    @endif
                    @if ($ad_type->slug == 'wanted-by-dealer')
                        @include('frontend.post.pages.wanted-by-dealer')
                    @endif
                    @if ($ad_type->slug == 'service-offered')
                        @include('frontend.post.pages.service-offered')
                    @endif
                    @if ($ad_type->slug == 'community')
                        @include('frontend.post.pages.community')
                    @endif
                    @if ($ad_type->slug == 'event-class')
                        @include('frontend.post.pages.event-class')
                    @endif

                    <div class="col-lg-7 mt-3">
                        <div class="featured_item">
                            <label class="osp-chk" for="featured_id">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="featured" value="1" {{ old('featured') ? 'checked': '' }} id="featured_id">
                                </div>
                            </label>
                            <div class="osp-text">
                                <div class="osp-pb-name">Mark as Featured
                                    <strong class="finprice_201">$7.00</strong>
                                </div>
                                <div class="osp-pb-desc">Make your listing unique on home and search page!</div>
                            </div>
                            <div class="osp-select">
                                <select id="price" name="promotion" class="form-control promotion">
                                    @foreach ($promotions as $promotion)
                                        <option value="{{ $promotion->id }}" data-price="{{$promotion->price}}">{{ $promotion->title.' '.'for'.' '.'$'.number_format($promotion->price, 2) }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="mt-5 text-center">
                        <button type="submit" class="btn btn-light">Ad Post</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

@push('script')
    <script src="{{ asset('image_uploader/dist/image-uploader.min.js') }}"></script>
    <script>
        $('.input-images-2').imageUploader({
            maxSize: 6 * 1024 * 1024,
            maxFiles: 10,
            multiple: true,
        });
    </script>

    <script>
        function show_phone(id) {
            if ($(id).is(':checked')) {
                $('.disabled_checked input').not(id).removeAttr('disabled');
            } else {
                $('.disabled_checked input').not(id).attr('disabled', true);
            }
        }
        show_phone('#show_phone');

        $('#show_phone').change(function() {
            show_phone(this);
        });

        $('#licensed').change(function() {
            if ($(this).is(':checked')) {
                $('#license_info').removeAttr('disabled');
            }
        });
        $('#unlicensed').change(function() {
            if ($(this).is(':checked')) {
                $('#license_info').attr('disabled', true);
            }
        });
        $('#broker_1').change(function() {
            if ($(this).is(':checked')) {
                console.log(1);
                $('#broker_fee_detailed').removeAttr('disabled');
            } else {
                $('#broker_fee_detailed').attr('disabled', true);

            }
        });
        $('#application_1').change(function() {
            if ($(this).is(':checked')) {
                $('#application_fee_detailed').removeAttr('disabled');
            } else {
                $('#application_fee_detailed').attr('disabled', true);

            }
        });
        $('.promotion').change(function () {
            const price = $("option:selected", this).data('price');
            $('.finprice_201').text('$' +price.toFixed(2));
        });


    </script>
@endpush
