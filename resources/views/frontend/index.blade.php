@extends('frontend.layouts.app', ['nav' => 'no'])

@section('meta')
@endsection

@push('style')
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
@endpush

@section('content')
    <div class="template_wrap mt-1 d-none d-md-block">
        <div class="container">
            <div class="row g-0">
                <div class="col-md-3">
                    <div class="sidebar_left overflow-hidden">
                        <div class="heading1 text-center p-3">
                            <h5><a href="{{ route('index') }}"><img src="{{ asset('frontend/images/logo.png') }}" width="124" alt="logo"></a>
                            </h5>
                            <ul class="list-group pt-3">
                                <li class="custom-list-style mb-2">
                                    <a href="{{ route('post.step.one') }}">Create a posting</a>
                                </li>
                                @if(auth('user')->check())
                                    <li class="mt-1 mb-3">
                                        <a href="{{ route('user.profile') }}">My Account</a>
                                    </li>
                                @else
                                    <li class="mt-1 mb-3">
                                        <a href="{{ route('signin') }}">My Account</a>
                                    </li>
                                @endif
                            </ul>
                            <div class="search-style mb-4">
                                <form action="#" method="post">
                                    <div class="input-group">
                                        <input type="text" name="search" id="search" class="form-control"
                                            placeholder="Search..." required>
                                        <button type="submit" class="text-input-group"><i
                                                class="fa fa-search"></i></button>
                                    </div>
                                </form>
                            </div>
                            <div class="custom-calender mb-3">
                                <h5><a href="javascript:;">Event Calendar</a></h5>
                            </div>
                            <div class="calender-style">
                                <div id="datepicker"></div>
                            </div>
                            <div class="mt-5 list-style1 mb-3">
                                <ul class="list-group">
                                    <li class="list-item custom-list-style1">
                                        <a href="{{ route('shop') }}">hjælp. faq, misbrug, juridisk</a>
                                    </li>
                                    <li class="custom-list-style1">
                                        <a href="{{ route('shop') }}">undgå svindel og bedrag </a>
                                    </li>
                                    <li class="custom-list-style1">
                                        <a href="{{ route('shop') }}">personlige sikkerhedsråd </a>
                                    </li>
                                    <li class="custom-list-style1">
                                        <a href="{{ route('shop') }}">anvendelsesvilkår </a>
                                    </li>
                                    <li class="custom-list-style1">
                                        <a href="{{ route('shop') }}">datapolitik</a>
                                    </li>
                                    <li class="custom-list-style1">
                                        <a href="{{ route('shop') }}">systemstatus </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="list-style1">
                                <ul class="list-group ">
                                    <li class="list-item custom-list-style1">
                                        <a href="{{ route('shop') }}">om craigslist </a>
                                    </li>
                                    <li class="custom-list-style1">
                                        <a href="{{ route('shop') }}">craigslist åben kilde </a>
                                    </li>
                                    <li class="custom-list-style1">
                                        <a href="{{ route('shop') }}">craigslist blog </a>
                                    </li>
                                    <li class="custom-list-style1">
                                        <a href="{{ route('shop') }}">bedste-fra-craigslist </a>
                                    </li>
                                    <li class="custom-list-style1">
                                        <a href="{{ route('shop') }}">"craigslist joe" </a>
                                    </li>
                                    <li class="custom-list-style1">
                                        <a href="{{ route('shop') }}">craig newmark philanthropies </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-7">
                    <div class="heading2 text-center py-3">
                        <h5><a href="{{ route('index') }}">havasell.com </a></h5>
                    </div>
                    <div class="main_body">
                        <div class="row g-2">
                            <div class="col-md-6 col-lg-4">
                                <div class="category_heading text-center">
                                    <h5>community</h5>
                                </div>
                                <div class="row g-1">
                                    <div class="col-md-6 col-lg-6">
                                        <div class="mt-2">
                                            <ul class="list-group category_list">
                                                <li><a href="{{ route('shop') }}">An item</a></li>
                                                <li><a href="{{ route('shop') }}">A second</a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A third</a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A fourth</a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A third</a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A fourth</a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-6">
                                        <div class="mt-2">
                                            <ul class="list-group category_list">
                                                <li><a href="{{ route('shop') }}">An item</a></li>
                                                <li><a href="{{ route('shop') }}">A second </a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A third </a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A fourth </a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A third </a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A fourth</a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="category_heading text-center mt-2">
                                    <h5>community</h5>
                                </div>
                                <div class="row g-1">
                                    <div class="col-md-6 col-lg-6">
                                        <div class="mt-2">
                                            <ul class="list-group category_list">
                                                <li><a href="{{ route('shop') }}">An item</a></li>
                                                <li><a href="{{ route('shop') }}">A second </a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A third </a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A fourth </a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A third </a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A fourth </a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-6">
                                        <div class="mt-2">
                                            <ul class="list-group category_list">
                                                <li><a href="{{ route('shop') }}">An item</a></li>
                                                <li><a href="{{ route('shop') }}">A second</a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A third </a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A fourth </a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A third </a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">A fourth </a>
                                                </li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="category_heading text-center mt-2">
                                    <h5>community</h5>
                                </div>
                                <div class="row g-1">
                                    <div class="col-md-6 col-lg-6">
                                        <div class="mt-2">
                                            <ul class="list-group category_list">
                                                <li><a href="{{ route('shop') }}">An item</a></li>
                                                <li><a href="{{ route('shop') }}">A second </a></li>
                                                <li><a href="{{ route('shop') }}">A third </a></li>
                                                <li><a href="{{ route('shop') }}">A fourth </a></li>
                                                <li><a href="{{ route('shop') }}">fifth</a></li>
                                                <li><a href="{{ route('shop') }}">A third </a></li>
                                                <li><a href="{{ route('shop') }}">A fourth </a></li>
                                                <li><a href="{{ route('shop') }}">fifth</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-6">
                                        <div class="mt-2">
                                            <ul class="list-group category_list">
                                                <li><a href="{{ route('shop') }}">An item</a></li>
                                                <li><a href="{{ route('shop') }}">A second </a></li>
                                                <li><a href="{{ route('shop') }}">A third </a></li>
                                                <li><a href="{{ route('shop') }}">A fourth </a></li>
                                                <li><a href="{{ route('shop') }}">fifth</a></li>
                                                <li><a href="{{ route('shop') }}">A third </a></li>
                                                <li><a href="{{ route('shop') }}">A fourth </a></li>
                                                <li><a href="{{ route('shop') }}">A fourth </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="category_heading text-center">
                                    <h5>community</h5>
                                </div>
                                <div class="mt-2">
                                    <ul class="list-group category_list">
                                        <li><a href="{{ route('shop') }}">An item</a></li>
                                        <li><a href="{{ route('shop') }}">A second </a></li>
                                        <li><a href="{{ route('shop') }}">A third </a></li>
                                        <li><a href="{{ route('shop') }}">A fourth </a></li>
                                        <li><a href="{{ route('shop') }}">fifth</a></li>
                                        <li><a href="{{ route('shop') }}">A third </a></li>
                                        <li><a href="{{ route('shop') }}">A fourth </a></li>
                                        <li><a href="{{ route('shop') }}">fifth</a></li>
                                        <li><a href="{{ route('shop') }}">fifth</a></li>
                                        <li><a href="{{ route('shop') }}">A third </a></li>
                                        <li><a href="{{ route('shop') }}">A fourth </a></li>
                                        <li><a href="{{ route('shop') }}">fifth</a></li>
                                    </ul>
                                </div>
                                <div class="category_heading text-center mt-2">
                                    <h5>community</h5>
                                </div>
                                <div class="row g-1">
                                    <div class="col-md-6 col-lg-6">
                                        <div class="mt-2">
                                            <ul class="list-group category_list">
                                                <li><a href="{{ route('shop') }}">An item</a></li>
                                                <li><a href="{{ route('shop') }}">A second </a></li>
                                                <li><a href="{{ route('shop') }}">A third </a></li>
                                                <li><a href="{{ route('shop') }}">A fourth </a></li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                                <li><a href="{{ route('shop') }}">A third </a></li>
                                                <li><a href="{{ route('shop') }}">A fourth </a></li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                                <li><a href="{{ route('shop') }}">A third </a></li>
                                                <li><a href="{{ route('shop') }}">A fourth </a></li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                                <li><a href="{{ route('shop') }}">An item</a></li>
                                                <li><a href="{{ route('shop') }}">A second </a></li>
                                                <li><a href="{{ route('shop') }}">A third </a></li>
                                                <li><a href="{{ route('shop') }}">A fourth </a></li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                                <li><a href="{{ route('shop') }}">A third</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-6">
                                        <div class="mt-2">
                                            <ul class="list-group category_list">
                                                <li><a href="{{ route('shop') }}">An item</a></li>
                                                <li><a href="{{ route('shop') }}">A second </a></li>
                                                <li><a href="{{ route('shop') }}">A third </a></li>
                                                <li><a href="{{ route('shop') }}">A fourth </a></li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                                <li><a href="{{ route('shop') }}">A third </a></li>
                                                <li><a href="{{ route('shop') }}">A fourth </a></li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                                <li><a href="{{ route('shop') }}">A third</a></li>
                                                <li><a href="{{ route('shop') }}">A fourth</a></li>
                                                <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                                <li><a href="{{ route('shop') }}">An item</a></li>
                                                <li><a href="{{ route('shop') }}">A second</a></li>
                                                <li><a href="{{ route('shop') }}">A third</a></li>
                                                <li><a href="{{ route('shop') }}">A fourth</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="category_heading text-center">
                                    <h5>community</h5>
                                </div>
                                <div class="mt-2">
                                    <ul class="list-group category_list">
                                        <li><a href="{{ route('shop') }}">An item</a></li>
                                        <li><a href="{{ route('shop') }}">A second </a></li>
                                        <li><a href="{{ route('shop') }}">A third </a></li>
                                        <li><a href="{{ route('shop') }}">A fourth </a></li>
                                        <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                        <li><a href="{{ route('shop') }}">A third </a></li>
                                        <li><a href="{{ route('shop') }}">A fourth </a></li>
                                        <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                        <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                        <li><a href="{{ route('shop') }}">A third </a></li>
                                        <li><a href="{{ route('shop') }}">A fourth </a></li>
                                        <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                        <li><a href="{{ route('shop') }}">An item</a></li>
                                        <li><a href="{{ route('shop') }}">A second </a></li>
                                        <li><a href="{{ route('shop') }}">A third </a></li>
                                        <li><a href="{{ route('shop') }}">A fourth </a></li>
                                        <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                        <li><a href="{{ route('shop') }}">A third </a></li>
                                        <li><a href="{{ route('shop') }}">A fourth </a></li>
                                        <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                        <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                        <li><a href="{{ route('shop') }}">A third </a></li>
                                        <li><a href="{{ route('shop') }}">A fourth </a></li>
                                        <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                        <li><a href="{{ route('shop') }}">An item</a></li>
                                        <li><a href="{{ route('shop') }}">A second </a></li>
                                        <li><a href="{{ route('shop') }}">A third </a></li>
                                        <li><a href="{{ route('shop') }}">A fourth </a></li>
                                        <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                        <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                        <li><a href="{{ route('shop') }}">A third </a></li>
                                        <li><a href="{{ route('shop') }}">A fourth </a></li>
                                        <li><a href="{{ route('shop') }}">And a fifth</a></li>
                                        <li><a href="{{ route('shop') }}">An item</a></li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-2">
                    <div class="sidebar_right">
                        <div class="heading3 text-center">
                            <select name="language" id="language"
                                class="form-control form-select language_dropdown mb-3">
                                <option value="">English</option>
                                <option value="">Hindi</option>
                                <option value="">Latvian</option>
                                <option value="">Polish</option>
                                <option value="">Tamil</option>
                                <option value="">Danish</option>
                                <option value="">Albanian</option>
                                <option value="">Luganda</option>
                            </select>
                            <ul class="list-group mb-3">
                                <li>
                                    <a href="{{ route('shop') }}">English </a>
                                </li>
                                <li>
                                    <a href="{{ route('shop') }}">mellemφsten</a>
                                </li>
                            </ul>
                            <div class="mt-2 list-syle-hover">
                                <ul class="list-group ">
                                    <li><a href="{{ route('shop') }}">An item</a></li>
                                    <li> <a href="{{ route('shop') }}">A second</a></li>
                                    <li> <a href="{{ route('shop') }}">A second</a></li>
                                    <li> <a href="{{ route('shop') }}">A second</a></li>
                                </ul>
                            </div>
                            <div class="mt-2 list-syle-hover">
                                <ul class="list-group ">
                                    <li><a href="{{ route('shop') }}">An item</a></li>
                                    <li> <a href="{{ route('shop') }}">A second</a></li>
                                    <li> <a href="{{ route('shop') }}">A second</a></li>
                                    <li> <a href="{{ route('shop') }}">A second</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="text-center footer_menu">
                <div class="container">
                    <div class="p-3">
                        <ul>
                            <li class="list-item text-white">
                                © 2023 craigslist
                            </li>
                            <li> <a href="javascript:;">hjælp |</a></li>
                            <li><a href="javascript:;">sikkerhed |</a></li>
                            <li><a href="javascript:;">privatliv |</a></li>
                            <li><a href="javascript:;"> feedback |</a></li>
                            <li><a href="javascript:;">vilkår |</a></li>
                            <li><a href="javascript:;">vedr |</a></li>
                            <li><a href="javascript:;">vedr |</a></li>
                            <li><a href="javascript:;">vedr |</a></li>
                        </ul>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    {{-- mobile version  --}}
    <div class="mobile-view d-block d-md-none">
        <div class="mobile_header">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-5">
                        <div class="mobile_heade_left">
                            <div class="site_logo">
                                <a class="header_logo" name="logoLink" href="index.html">CL</a>
                                <a href="index.html">Jerusalem</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-7">
                        <div class="mobile_heade_right float-end">
                            <ul>
                                <li><a href="{{ route('shop') }}">Post</a></li>
                                <li><a href="{{ route('shop') }}">Account</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="mobile_body">
                <form action="#" method="post" class="mb-3 mt-3 p-2">
                    <div class="input-group">
                        <input type="text" name="search" id="search" class="form-control"
                            placeholder="Search..." required>
                        <button type="submit" class="text-input-group"><i class="la la-search"></i></button>
                    </div>
                </form>
                <div class="accordion_item mb-4">
                    <div class="accordion" id="accordionExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="heading_1">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapse_1" aria-expanded="false" aria-controls="collapse_1">
                                    For Sale
                                </button>
                            </h2>
                            <div id="collapse_1" class="accordion-collapse collapse" aria-labelledby="heading_1"
                                data-bs-parent="#accordionExample">
                                <div class="accordion_body">
                                    <ul>
                                        <li><a href="{{ route('shop') }}">all for sale</a></li>
                                        <li><a href="{{ route('shop') }}">antiques</a></li>
                                        <li><a href="{{ route('shop') }}">appliances</a></li>
                                        <li><a href="{{ route('shop') }}">arts+crafts</a></li>
                                        <li><a href="{{ route('shop') }}">atv/utv/sno</a></li>
                                        <li><a href="{{ route('shop') }}">aviation</a></li>
                                        <li><a href="{{ route('shop') }}">barter</a></li>
                                        <li><a href="{{ route('shop') }}">beauty</a></li>
                                        <li><a href="{{ route('shop') }}">bikes</a></li>
                                        <li><a href="{{ route('shop') }}">boat parts</a></li>
                                        <li><a href="{{ route('shop') }}">books</a></li>
                                        <li><a href="{{ route('shop') }}">business</a></li>
                                        <li><a href="{{ route('shop') }}">computer</a></li>
                                        <li><a href="{{ route('shop') }}">collectibles</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="heading_2">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapse_2" aria-expanded="false" aria-controls="collapse_2">
                                    Jobs
                                </button>
                            </h2>
                            <div id="collapse_2" class="accordion-collapse collapse" aria-labelledby="heading_2"
                                data-bs-parent="#accordionExample">
                                <div class="accordion_body">
                                    <ul>
                                        <li><a href="{{ route('shop') }}">all for sale</a></li>
                                        <li><a href="{{ route('shop') }}">antiques</a></li>
                                        <li><a href="{{ route('shop') }}">appliances</a></li>
                                        <li><a href="{{ route('shop') }}">arts+crafts</a></li>
                                        <li><a href="{{ route('shop') }}">atv/utv/sno</a></li>
                                        <li><a href="{{ route('shop') }}">aviation</a></li>
                                        <li><a href="{{ route('shop') }}">barter</a></li>
                                        <li><a href="{{ route('shop') }}">beauty</a></li>
                                        <li><a href="{{ route('shop') }}">bikes</a></li>
                                        <li><a href="{{ route('shop') }}">boat parts</a></li>
                                        <li><a href="{{ route('shop') }}">books</a></li>
                                        <li><a href="{{ route('shop') }}">business</a></li>
                                        <li><a href="{{ route('shop') }}">computer</a></li>
                                        <li><a href="{{ route('shop') }}">collectibles</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="heading_3">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapse_3" aria-expanded="false" aria-controls="collapse_3">
                                    Housing
                                </button>
                            </h2>
                            <div id="collapse_3" class="accordion-collapse collapse" aria-labelledby="heading_3"
                                data-bs-parent="#accordionExample">
                                <div class="accordion_body">
                                    <ul>
                                        <li><a href="{{ route('shop') }}">all for sale</a></li>
                                        <li><a href="{{ route('shop') }}">antiques</a></li>
                                        <li><a href="{{ route('shop') }}">appliances</a></li>
                                        <li><a href="{{ route('shop') }}">arts+crafts</a></li>
                                        <li><a href="{{ route('shop') }}">atv/utv/sno</a></li>
                                        <li><a href="{{ route('shop') }}">aviation</a></li>
                                        <li><a href="{{ route('shop') }}">barter</a></li>
                                        <li><a href="{{ route('shop') }}">beauty</a></li>
                                        <li><a href="{{ route('shop') }}">bikes</a></li>
                                        <li><a href="{{ route('shop') }}">boat parts</a></li>
                                        <li><a href="{{ route('shop') }}">books</a></li>
                                        <li><a href="{{ route('shop') }}">business</a></li>
                                        <li><a href="{{ route('shop') }}">computer</a></li>
                                        <li><a href="{{ route('shop') }}">collectibles</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="heading_4">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapse_4" aria-expanded="false" aria-controls="collapse_4">
                                    Community
                                </button>
                            </h2>
                            <div id="collapse_4" class="accordion-collapse collapse" aria-labelledby="heading_4"
                                data-bs-parent="#accordionExample">
                                <div class="accordion_body">
                                    <ul>
                                        <li><a href="{{ route('shop') }}">all for sale</a></li>
                                        <li><a href="{{ route('shop') }}">antiques</a></li>
                                        <li><a href="{{ route('shop') }}">appliances</a></li>
                                        <li><a href="{{ route('shop') }}">arts+crafts</a></li>
                                        <li><a href="{{ route('shop') }}">atv/utv/sno</a></li>
                                        <li><a href="{{ route('shop') }}">aviation</a></li>
                                        <li><a href="{{ route('shop') }}">barter</a></li>
                                        <li><a href="{{ route('shop') }}">beauty</a></li>
                                        <li><a href="{{ route('shop') }}">bikes</a></li>
                                        <li><a href="{{ route('shop') }}">boat parts</a></li>
                                        <li><a href="{{ route('shop') }}">books</a></li>
                                        <li><a href="{{ route('shop') }}">business</a></li>
                                        <li><a href="{{ route('shop') }}">computer</a></li>
                                        <li><a href="{{ route('shop') }}">collectibles</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="heading_5">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapse_5" aria-expanded="false" aria-controls="collapse_5">
                                    Services
                                </button>
                            </h2>
                            <div id="collapse_5" class="accordion-collapse collapse" aria-labelledby="heading_5"
                                data-bs-parent="#accordionExample">
                                <div class="accordion_body">
                                    <ul>
                                        <li><a href="{{ route('shop') }}">all for sale</a></li>
                                        <li><a href="{{ route('shop') }}">antiques</a></li>
                                        <li><a href="{{ route('shop') }}">appliances</a></li>
                                        <li><a href="{{ route('shop') }}">arts+crafts</a></li>
                                        <li><a href="{{ route('shop') }}">atv/utv/sno</a></li>
                                        <li><a href="{{ route('shop') }}">aviation</a></li>
                                        <li><a href="{{ route('shop') }}">barter</a></li>
                                        <li><a href="{{ route('shop') }}">beauty</a></li>
                                        <li><a href="{{ route('shop') }}">bikes</a></li>
                                        <li><a href="{{ route('shop') }}">boat parts</a></li>
                                        <li><a href="{{ route('shop') }}">books</a></li>
                                        <li><a href="{{ route('shop') }}">business</a></li>
                                        <li><a href="{{ route('shop') }}">computer</a></li>
                                        <li><a href="{{ route('shop') }}">collectibles</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="text-center footer_menu">
            <div class="container">
                <div class="p-2">
                    <ul>
                        <li class="list-item text-white">
                            © 2023 craigslist
                        </li>
                        <li> <a href="javascript:;">hjælp |</a></li>
                        <li><a href="javascript:;">sikkerhed |</a></li>
                        <li><a href="javascript:;">privatliv |</a></li>
                        <li><a href="javascript:;"> feedback |</a></li>
                        <li><a href="javascript:;">vilkår |</a></li>
                        <li><a href="javascript:;">vedr |</a></li>
                        <li><a href="javascript:;">vedr |</a></li>
                        <li><a href="javascript:;">vedr |</a></li>
                    </ul>
                </div>
            </div>
        </footer>
    </div>
@endsection

@push('script')
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script>
        $(function() {
            $("#datepicker").datepicker();
        });
    </script>
@endpush
