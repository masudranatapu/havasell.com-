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

@push('script')
@endpush
@section('title')
    {{ __('Details') }}
@endsection
@section('breadcrumb')
    <ul>
        <li><a href="#">{{ config('app.name') }} ></a></li>
        <li><a href="#">{{ $ad_details->ad_type->slug }} ></a></li>
        <li><a href="#">{{ $ad_details->category->slug }}</a></li>
    </ul>
@endsection

@section('content')
    <div class="main_template">
        <div class="container">
            <div class="single_product mt-5 mb-5">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-9">
                        <div class="single_pro_content mb-2">
                            <div class="product_info mb-4">
                                <div class="form-check">
                                    <input class="form-check-input" name="wishlist" type="checkbox"
                                        id="wishlist_{{ $ad_details->id }}"
                                        {{ isWishlisted($ad_details->id) ? 'checked' : '' }}
                                        onchange="AddWishlist2({{ $ad_details->id }}, {{ Auth::user()->id ?? '' }})">
                                    <label class="form-check-label" for="wishlist_{{ $ad_details->id }}">favorite</label>
                                </div>
                                {{-- <div class="form-check hide_collection">
                                    <input class="form-check-input" name="hide_collection" type="checkbox" id="hide_1">
                                    <label class="form-check-label" for="hide_1">hide</label>
                                </div>
                                <div class="form-check flag_mark">
                                    <input class="form-check-input" name="flag_mark" type="checkbox" id="flag_1">
                                    <label class="form-check-label" for="flag_1">mark with <br /> flags</label>
                                </div> --}}
                                <span class="float-end">Posted {{ $ad_details->created_at->diffForHumans() }}</span>
                            </div>
                            <h3>{{ $ad_details->title }}</h3>
                        </div>
                        <!-- gallery -->
                        <div class="product-item__gallery mb-4">
                            <div class="swiper mySwiper2">
                                <div class="swiper-wrapper single_item">
                                    @foreach ($ad_galleies as $key => $value)
                                        <div class="swiper-slide">
                                            <img src="{{ asset($value->image) }}" alt="{{ $value->name }}" />
                                        </div>
                                    @endforeach
                                </div>
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div>

                            <div thumbsSlider="" class="swiper mySwiper">
                                <div class="swiper-wrapper">
                                    @foreach ($ad_galleies as $key => $value)
                                        <div class="swiper-slide">
                                            <img src="{{ asset($value->image) }}" alt="{{ $value->name }}" />
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>

                        <!-- details -->
                        <div class="details">
                            <!-- Job Offerd -->
                            <div class="row">
                                <div class="col-md-6">
                                    <ul class="mb-4">
                                        <li><strong>{{ $ad_details->title }}</strong>
                                        @if ($ad_details->ad_type->slug == 'job-offered')
                                            <li>Kind of Employment: <strong>{{ $ad_details->employment_type }}</strong>
                                            </li>
                                            @isset($ad_details->services)
                                                <li>
                                                    Services:
                                                    @foreach ($ad_details->services as $value)
                                                        <span class="badge rounded-pill bg-success">{{ $value }}</span>
                                                    @endforeach
                                                </li>
                                            @endisset
                                            <li>Job Title: <strong>{{ $ad_details->job_title }}</strong></li>
                                            <li>Salary: <strong>${{ $ad_details->price }}</strong></li>
                                            <li>Company Name: <strong>{{ $ad_details->company_name }}</strong></li>
                                        @endif
                                        @if ($ad_details->ad_type->slug == 'job-wanted')
                                            @isset($ad_details->availability)
                                                <li>Availability:
                                                    @foreach ($ad_details->availability as $value)
                                                        <span class="badge rounded-pill bg-primary">{{ $value }}</span>
                                                    @endforeach
                                                </li>
                                            @endisset
                                            <li>Education: <strong>{{ $ad_details->education }}</strong></li>
                                            <li>Direct Contact: <strong>{{ $ad_details->direct_contact }}</strong></li>
                                            <li>Is license: <strong>{{ $ad_details->is_license }}</strong></li>
                                            <li>licensure information: <strong>{{ $ad_details->license_info }}</strong>
                                            </li>
                                        @endif
                                        @if ($ad_details->ad_type->slug == 'housing-offered')
                                            <li>SQFT: <strong>{{ $ad_details->sqft }}</strong></li>
                                            <li>Houssing Type: <strong>{{ $ad_details->houssing_type }}</strong></li>
                                            <li>Laundry: <strong>{{ $ad_details->laundry }}</strong></li>
                                            <li>Parking: <strong>{{ $ad_details->parking }}</strong></li>
                                            <li>Bedrooms: <strong>{{ $ad_details->bedrooms }}</strong></li>
                                            <li>Bathrooms: <strong>{{ $ad_details->bathrooms }}</strong></li>
                                            @isset($ad_details->services)
                                                <li>
                                                    Services:
                                                    @foreach ($ad_details->services as $value)
                                                        <span class="badge rounded-pill bg-success">{{ $value }}</span>
                                                    @endforeach
                                                </li>
                                            @endisset
                                            <li>Available On: <strong>{{ $ad_details->available_on }}</strong></li>
                                        @endif
                                        @if ($ad_details->ad_type->slug == 'housing-wanted')
                                            @isset($ad_details->services)
                                                <li>
                                                    Services:
                                                    @foreach ($ad_details->services as $value)
                                                        <span class="badge rounded-pill bg-success">{{ $value }}</span>
                                                    @endforeach
                                                </li>
                                            @endisset
                                            <li>Broker Fee: <strong>{{ $ad_details->broker_fee }}</strong></li>
                                            <li>Please: <strong>{{ $ad_details->fee_detailed }}</strong></li>
                                            <li>Application Fee: <strong>{{ $ad_details->application_fee }}</strong></li>
                                            <li>detailed fee description please:
                                                <strong>{{ $ad_details->fee_detailed }}</strong>
                                            </li>
                                        @endif
                                        @if ($ad_details->ad_type->slug == 'event-class')
                                            @isset($ad_details->services)
                                                <li>
                                                    Services:
                                                    @foreach ($ad_details->services as $value)
                                                        <span class="badge rounded-pill bg-success">{{ $value }}</span>
                                                    @endforeach
                                                </li>
                                            @endisset
                                            <li>Venue: <strong>{{ $ad_details->venue }}</strong></li>
                                            <li>Price: <strong>{{ $ad_details->price }}</strong></li>
                                            <li>Start Date: <strong>{{ date('d M, Y', strtotime($ad_details->event_start_date)) }}</strong></li>
                                            <li>End Date: <strong>{{ date('d M, Y', strtotime($ad_details->event_end_date)) }}</strong></li>
                                            <li>Event Duration: <strong>{{ $ad_details->event_duration }}</strong></li>
                                        @endif
                                    </ul>
                                </div>

                                <div class="col-md-6">
                                    <ul class="mb-4">
                                        <li>Email: <strong>{{ $ad_details->customer->email }}</strong></li>
                                        <li>Email Privacy: <strong>{{ $ad_details->email_privacy }}</strong></li>
                                        <li>Phone Call: <strong>{{ $ad_details->phone_call == 1 ? 'Yes' : 'No' }}</strong>
                                        </li>
                                        <li>Phone Text: <strong>{{ $ad_details->phone_text == 1 ? 'Yes' : 'No' }}</strong>
                                        </li>
                                        <li>Phone Number: <strong>{{ $ad_details->phone }}</strong></li>
                                        <li>Local number: <strong>{{ $ad_details->phone_2 }}</strong></li>
                                        <li>Contact Name: <strong>{{ $ad_details->contact_name }}</strong></li>
                                        <li>City: <strong>{{ $ad_details->city }}</strong></li>
                                    </ul>
                                </div>
                            </div>
                            <p>{{ $ad_details->description }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer -->
         @include('frontend.layouts.footer')

    </div>
@endsection

@push('script')
    <script>
        "use strict";
        var swiper = new Swiper(".mySwiper", {
            spaceBetween: 12,
            freeMode: true,
            watchSlidesProgress: true,
            breakpoints: {

                1024: {
                    slidesPerView: 6,
                },
                1: {
                    slidesPerView: 3,
                },
            },
        });

        var swiper2 = new Swiper(".mySwiper2", {
            spaceBetween: 10,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            thumbs: {
                swiper: swiper,
            },
        });
    </script>
@endpush
