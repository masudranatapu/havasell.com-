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
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/2.7.1/css/lightgallery-bundle.min.css" />
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
    <div class="row g-0">
        <div class="col-12">
            <div class="main_body">
                <div class="single_product mt-5 mb-5">
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-9">
                            <div class="single_pro_content mb-2">
                                {{--
                                    <div class="product_info mb-4">
                                        <div class="form-check">
                                            <input class="form-check-input" name="wishlist" type="checkbox"
                                                id="wishlist_{{ $ad_details->id }}" {{ isWishlisted($ad_details->id) ? 'checked'
                                            :
                                            '' }}
                                            onchange="AddWishlist2({{ $ad_details->id }}, {{ Auth::user()->id ?? '' }})">
                                            <label class="form-check-label"
                                                for="wishlist_{{ $ad_details->id }}">favorite</label>
                                        </div>
                                        <div class="form-check hide_collection">
                                            <input class="form-check-input" name="hide_collection" type="checkbox" id="hide_1">
                                            <label class="form-check-label" for="hide_1">hide</label>
                                        </div>
                                        <div class="form-check flag_mark">
                                            <input class="form-check-input" name="flag_mark" type="checkbox" id="flag_1">
                                            <label class="form-check-label" for="flag_1">mark with <br /> flags</label>
                                        </div>
                                        <span class="float-end">Posted {{ $ad_details->created_at->diffForHumans() }}</span>
                                    </div>
                                --}}
                                <h3>{{ $ad_details->title }}</h3>
                            </div>
                            <!-- gallery -->
                            <div class="product-item__gallery mb-4">
                                <div class="swiper mySwiper2">
                                     <div class="swiper-wrapper single_item" id="lightgallery">
                                        @foreach ($ad_galleies as $key => $value)
                                            <a href="{{ asset($value->image) }}" class="swiper-slide">
                                                <img src="{{ asset($value->image) }} " alt="{{ $value->name }}" />
                                            </a>
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
                            <div class="details p-5">
                                <!-- Job Offerd -->
                                <div class="row">
                                    <div class="col-md-6">
                                        <ul class="mb-4">
                                            @if ($ad_details->featured == 1 && $ad_details->feature_duration > now())
                                                <li class="badge bg-success text-white mb-2"><strong>Featured</strong>
                                                </li>
                                            @endif
                                            <li>
                                                @if ($ad_details->ad_type->slug == 'job-offered')
                                                    @if ($ad_details->employment_type)
                                            <li>Kind of Employment: <strong>{{ $ad_details->employment_type }}</strong>
                                                @endif
                                            </li>
                                            @isset($ad_details->services)
                                                <li>
                                                    Services:
                                                    @foreach ($ad_details->services as $value)
                                                        <span class="badge rounded-pill bg-success">{{ $value }}</span>
                                                    @endforeach
                                                </li>
                                            @endisset
                                            @if ($ad_details->job_title)
                                                <li>Job Title: <strong>{{ $ad_details->job_title }}</strong></li>
                                            @endif
                                            @if ($ad_details->price)
                                                <li>Salary: <strong>${{ $ad_details->price }}</strong></li>
                                            @endif
                                            @if ($ad_details->price)
                                                <li>Company Name: <strong>{{ $ad_details->company_name }}</strong></li>
                                            @endif
                                            @endif
                                            @if ($ad_details->ad_type->slug == 'job-wanted')
                                                @isset($ad_details->availability)
                                                    <li>Availability:
                                                        @foreach ($ad_details->availability as $value)
                                                            <span
                                                                class="badge rounded-pill bg-primary">{{ $value }}</span>
                                                        @endforeach
                                                    </li>
                                                @endisset
                                                @if ($ad_details->education)
                                                    <li>Education: <strong>{{ $ad_details->education }}</strong></li>
                                                @endif
                                                @if ($ad_details->direct_contact)
                                                    <li>Direct Contact: <strong>{{ $ad_details->direct_contact }}</strong>
                                                    </li>
                                                @endif
                                                @if ($ad_details->is_license)
                                                    <li>Is license: <strong>{{ $ad_details->is_license }}</strong></li>
                                                @endif
                                                @if ($ad_details->license_info)
                                                    <li>licensure information:
                                                        <strong>{{ $ad_details->license_info }}</strong>
                                                @endif
                                                </li>
                                            @endif
                                            @if ($ad_details->ad_type->slug == 'housing-offered')
                                                @if ($ad_details->sqft)
                                                    <li>SQFT: <strong>{{ $ad_details->sqft }}</strong></li>
                                                @endif
                                                @if ($ad_details->houssing_type)
                                                    <li>Houssing Type: <strong>{{ $ad_details->houssing_type }}</strong>
                                                    </li>
                                                @endif
                                                @if ($ad_details->laundry)
                                                    <li>Laundry: <strong>{{ $ad_details->laundry }}</strong></li>
                                                @endif
                                                @if ($ad_details->parking)
                                                    <li>Parking: <strong>{{ $ad_details->parking }}</strong></li>
                                                @endif
                                                @if ($ad_details->bedrooms)
                                                    <li>Bedrooms: <strong>{{ $ad_details->bedrooms }}</strong></li>
                                                @endif
                                                @if ($ad_details->bathrooms)
                                                    <li>Bathrooms: <strong>{{ $ad_details->bathrooms }}</strong></li>
                                                @endif
                                                @isset($ad_details->services)
                                                    <li>
                                                        Services:
                                                        @foreach ($ad_details->services as $value)
                                                            <span
                                                                class="badge rounded-pill bg-success">{{ $value }}</span>
                                                        @endforeach
                                                    </li>
                                                @endisset
                                                @if ($ad_details->available_on)
                                                    <li>Available On: <strong>{{ $ad_details->available_on }}</strong></li>
                                                @endif
                                            @endif
                                            @if ($ad_details->ad_type->slug == 'housing-wanted')
                                                @isset($ad_details->services)
                                                    <li>
                                                        Services:
                                                        @foreach ($ad_details->services as $value)
                                                            <span
                                                                class="badge rounded-pill bg-success">{{ $value }}</span>
                                                        @endforeach
                                                    </li>
                                                @endisset
                                                @if ($ad_details->broker_fee)
                                                    <li>Broker Fee: <strong>{{ $ad_details->broker_fee }}</strong></li>
                                                @endif
                                                @if ($ad_details->fee_detailed)
                                                    <li>Please: <strong>{{ $ad_details->fee_detailed }}</strong></li>
                                                @endif
                                                @if ($ad_details->application_fee)
                                                    <li>Application Fee:
                                                        <strong>{{ $ad_details->application_fee }}</strong>
                                                    </li>
                                                @endif
                                                @if ($ad_details->fee_detailed)
                                                    <li>detailed fee description please:
                                                        <strong>{{ $ad_details->fee_detailed }}</strong>
                                                    </li>
                                                @endif
                                            @endif
                                            @if ($ad_details->ad_type->slug == 'event-class')
                                                @isset($ad_details->services)
                                                    <li>
                                                        Services:
                                                        @foreach ($ad_details->services as $value)
                                                            <span
                                                                class="badge rounded-pill bg-success">{{ $value }}</span>
                                                        @endforeach
                                                    </li>
                                                @endisset
                                                @if ($ad_details->venue)
                                                    <li>Venue: <strong>{{ $ad_details->venue }}</strong></li>
                                                @endif
                                                @if ($ad_details->price)
                                                    <li>Price: <strong>{{ $ad_details->price }}</strong></li>
                                                @endif
                                                @if ($ad_details->event_start_date)
                                                    <li>Start Date:
                                                        <strong>{{ date('d M, Y', strtotime($ad_details->event_start_date)) }}</strong>
                                                    </li>
                                                @endif
                                                @if ($ad_details->event_end_date)
                                                    <li>End Date:
                                                        <strong>{{ date('d M, Y', strtotime($ad_details->event_end_date)) }}</strong>
                                                    </li>
                                                @endif
                                                @if ($ad_details->event_duration)
                                                    <li>Event Duration: <strong>{{ $ad_details->event_duration }}</strong>
                                                    </li>
                                                @endif
                                            @endif
                                        </ul>
                                    </div>
                                    <div class="col-md-6">
                                        <ul class="mb-4">
                                            @if ($ad_details->email)
                                                <li>Email: <strong>{{ $ad_details->customer->email }}</strong></li>
                                            @endif
                                            @if ($ad_details->email_privacy)
                                                <li>Email Privacy: <strong>{{ $ad_details->email_privacy }}</strong></li>
                                            @endif
                                            @if ($ad_details->phone_call)
                                                <li>Phone Call:
                                                    <strong>{{ $ad_details->phone_call == 1 ? 'Yes' : 'No' }}</strong>
                                                </li>
                                            @endif
                                            @if ($ad_details->phone_text)
                                                <li>Phone Text:
                                                    <strong>{{ $ad_details->phone_text == 1 ? 'Yes' : 'No' }}</strong>
                                                </li>
                                            @endif
                                            @if ($ad_details->phone)
                                                <li>Phone Number: <strong>{{ $ad_details->phone }}</strong></li>
                                            @endif
                                            @if ($ad_details->phone_2)
                                                <li>Local number: <strong>{{ $ad_details->phone_2 }}</strong></li>
                                            @endif
                                            @if ($ad_details->contact_name)
                                                <li>Contact Name: <strong>{{ $ad_details->contact_name }}</strong></li>
                                            @endif
                                            @if ($ad_details->city)
                                                <li>City: <strong>{{ $ad_details->city }}</strong></li>
                                            @endif
                                        </ul>
                                    </div>
                                </div>
                                @if ($ad_details->description)
                                    <p>{{ $ad_details->description }}</p>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('script')
 <script src="{{ asset('frontend/js/lg-thumbnail.umd.js') }}"></script>
 <script src="{{ asset('frontend/js/lightgallery.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            lightGallery(document.getElementById('lightgallery'), {
                thumbnail: true,
                download: true,
                speed: 500,
            });
        });
    </script>
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
