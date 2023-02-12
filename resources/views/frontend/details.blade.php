@extends('frontend.layouts.app', ['nav' => 'yes'])

@section('meta')

@endsection

@push('script')

@endpush

@section('breadcrumb')
    <ul>
        <li><a href="#">Jerusalem ></a></li>
        <li><a href="#">case ></a></li>
        <li><a href="#">offices and activities trade</a></li>
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
                                    <input class="form-check-input" name="wishlist" type="checkbox" id="favorite_1">
                                    <label class="form-check-label" for="favorite_1">favorite</label>
                                </div>
                                <div class="form-check hide_collection">
                                    <input class="form-check-input" name="hide_collection" type="checkbox" id="hide_1">
                                    <label class="form-check-label" for="hide_1">hide</label>
                                </div>
                                <div class="form-check flag_mark">
                                    <input class="form-check-input" name="flag_mark" type="checkbox" id="flag_1">
                                    <label class="form-check-label" for="flag_1">mark with <br /> flags</label>
                                </div>
                                <span class="float-end">Posted 24 days ago</span>
                            </div>
                            <h3>₪65 / 770m2 - For Rent - commercial Real Estate In jerusalem (Talpiot)</h3>
                        </div>
                        <!-- gallery -->
                        <div class="product-item__gallery mb-4">
                            <div class="swiper mySwiper2">
                                <div class="swiper-wrapper single_item">
                                    <div class="swiper-slide">
                                        <img src="{{ asset('frontend/images/1.jpg') }}" alt="product-img" />
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="{{ asset('frontend/images/2.jpg') }}" alt="product-img" />
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="{{ asset('frontend/images/3.jpg') }}" alt="product-img" />
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="{{ asset('frontend/images/4.jpg') }}" alt="product-img" />
                                    </div>
                                </div>
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div>

                            <div thumbsSlider="" class="swiper mySwiper">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <img src="{{ asset('frontend/images/1.jpg') }}" alt="product-img" />
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="{{ asset('frontend/images/2.jpg') }}" alt="product-img" />
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="{{ asset('frontend/images/3.jpg') }}" alt="product-img" />
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="{{ asset('frontend/images/4.jpg') }}" alt="product-img" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- details -->
                        <div class="details">
                            <ul class="mb-4">
                                <li>Price: <strong>$656</strong></li>
                                <li>Rental Term: <strong>Monthly</strong></li>
                            </ul>

                            <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a
                                piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard
                                McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of
                                the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through
                                the cites of the word in classical literature, discovered the undoubtable source. Lorem
                                Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The
                                Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the
                                theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,
                                "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- footer -->
        <footer class="text-center footer_menu">
            <div class="container">
                <div class="p-2">
                    <ul>
                        <li class="list-item text-white">
                            © 2023 craigslist
                        </li>
                        <li> <a href="#">hjælp |</a></li>
                        <li><a href="#">sikkerhed |</a></li>
                        <li><a href="#">privatliv |</a></li>
                        <li><a href="#"> feedback |</a></li>
                        <li><a href="#">vilkår |</a></li>
                        <li><a href="#">vedr |</a></li>
                        <li><a href="#">vedr |</a></li>
                        <li><a href="#">vedr |</a></li>
                    </ul>
                </div>
            </div>
        </footer>
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
