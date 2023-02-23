@extends('frontend.layouts.app', ['nav' => 'yes'])
@section('title')
{{ __('Shop') }}
@endsection
@section('content')

{{-- <div id="mySidenav" class="container-fluid sidenav sidebar_menu">
    <div class="shop_filter">
        <form action="{{ route('frontend.search') }}" method="get" id="searchFrm">

            <input type="hidden" name="country" value="{{ getCountryCode() }}" id="country">


            @if (request()->has('category'))
            <input type="hidden" name="category" value="{{ request()->category }}">
            @endif
            @if (request()->has('category') && isset($subcategories) && $subcategories->count() > 0)
            <div class="filter_category mb-3">
                <h5>Sub Categories</h5>
                @foreach ($subcategories as $item)
                <div class="form-check">
                    <input class="form-check-input" name="subcategory[]" type="checkbox" value="{{ $item->slug }}"
                        id="subcategory{{ $item->id }}" {{ request()->has('subcategory') && in_array($item->slug,
                    request()->subcategory) ? 'checked':'' }} onchange="this.form.submit()" >
                    <label class="form-check-label" for="subcategory{{ $item->id }}">
                        {{ $item->name }}
                    </label>
                </div>
                @endforeach
            </div>
            @endif
            <div class="filter_category mb-3">
                <h5>Sort By</h5>
                <div class="form-check">
                    <input class="form-check-input" name="sort" type="radio" value="latest" id="sort_1" {{
                        request()->has('sort') && request()->sort == 'latest' ? 'checked':'' }}
                    onchange="this.form.submit()">
                    <label class="form-check-label" for="sort_1">
                        Latest
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" name="sort" type="radio" value="oldest" id="sort_2" {{
                        request()->has('sort') && request()->sort == 'oldest' ? 'checked':'' }}
                    onchange="this.form.submit()">
                    <label class="form-check-label" for="sort_2">
                        Oldest
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" name="sort" type="radio" value="asc" id="sort_3" {{
                        request()->has('sort') && request()->sort == 'asc' ? 'checked':'' }}
                    onchange="this.form.submit()">
                    <label class="form-check-label" for="sort_3">
                        Ascending
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" name="sort" type="radio" value="desc" id="sort_4" {{
                        request()->has('sort') && request()->sort == 'desc' ? 'checked':'' }}
                    onchange="this.form.submit()">
                    <label class="form-check-label" for="sort_4">
                        Descending
                    </label>
                </div>
            </div>
            <div class="filter_wrap mb-3">
                <label for="" class="form-label">offices and activities trade</label>
                <div class="form-check">
                    <input class="form-check-input" name="post[]" type="checkbox" value="title" id="duration_1" {{
                        request()->has('post') && in_array('title', request()->post) ? 'checked':'' }}
                    onchange="this.form.submit()"
                    >
                    <label class="form-check-label" for="duration_1">
                        it has title
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" name="post[]" type="checkbox" value="image" id="duration_2" {{
                        request()->has('post') && in_array('image', request()->post) ? 'checked':'' }}
                    onchange="this.form.submit()">
                    <label class="form-check-label" for="duration_2">
                        it has pictures
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" name="post[]" type="checkbox" value="today" id="duration_3" {{
                        request()->has('post') && in_array('today', request()->post) ? 'checked':'' }}
                    onchange="this.form.submit()">
                    <label class="form-check-label" for="duration_3">
                        posted today
                    </label>
                </div>
            </div>
            <div class="filter_wrap mb-3">
                <label for="" class="form-label">Price</label>
                <div class="row g-2">
                    <div class="col-6">
                        <div class="input-group">
                            <span class="input-group-text">$</span>
                            <input type="number" name="min_price" id="min_price" placeholder="Min"
                                value="{{ request()->min_price }}" class="form-control">
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="input-group">
                            <span class="input-group-text">$</span>
                            <input type="number" name="max_price" id="max_price" placeholder="Max"
                                value="{{ request()->max_price }}" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
            <div class="filter_wrap mb-3">
                <a href="{{ route('frontend.search') }}" class="reset">Reset</a>
                <button type="submit" class="float-end">update search</button>
            </div>
    </div>
</div>

<div id="main" class="margin_left">
    <div class="product_search mb-4">
        <span class="navbar_btn" onclick="openNav()">
            <i class="las la-angle-double-left"></i>
        </span>
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <input type="text" name="search" id="search" class="form-control">
                    <button type="submit" class="btn btn-primary"><i class="la la-search"></i></button>
                </div>
            </div>
        </div>
        </form>
    </div>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">
        @foreach ($ads as $key => $value)
        <div class="col mb-3">
            <div class="prodouct_wrap">
                <div class="favorite">
                    <div class="form-check">
                        <input class="form-check-input" name="wishlist" type="checkbox" id="wishlist_{{ $value->id }}"
                            {{ isWishlisted($value->id) ? 'checked' : '' }}
                        onchange="AddWishlist2({{ $value->id }}, {{ Auth::user()->id ?? '' }})">
                        <label class="form-check-label" for="wishlist_{{ $value->id }}"></label>
                    </div>
                    <span>{{ date('d Y', strtotime($value->created_at)) }}</span>
                </div>
                <div class="product_img">
                    <a href="{{ route('frontend.details', $value->slug) }}"><img src="{{ asset($value->thumbnail) }}"
                            class="w-100" alt="image"></a>
                </div>
                <div class="product_content">
                    <h5>{{ $value->price }}</h5>
                    <h4><a href="{{ route('frontend.details', $value->slug) }}">{{ Str::limit($value->title, '32',
                            '...') }}</a>
                    </h4>
                    <p>({{ $value->city }}
                        {{ isset($value->countries->name) ? ', ' . ucfirst(strtolower($value->countries->name)) : ''
                        }})
                    </p>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div> --}}

<div class="row g-0">
    <div class="col-lg-4 col-xl-3">
        <div class="sidebar_left overflow-hidden">
            <div class="shop_filter p-3">
                <form action="#" method="post">
                    <div class="filter_category mb-4">
                        <h5>offices and activities trade</h5>
                        <div class="form-check">
                            <input class="form-check-input" name="category" type="checkbox" value="" id="category_1">
                            <label class="form-check-label" for="category_1">
                                search titles only
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" name="category" type="checkbox" value="" id="category_2">
                            <label class="form-check-label" for="category_2">
                                it has pictures
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" name="category" type="checkbox" value="" id="category_3">
                            <label class="form-check-label" for="category_3">
                                posted today
                            </label>
                        </div>
                    </div>
                    <div class="filter_wrap mb-4">
                        <h5>Price</h5>
                        <div class="row g-2">
                            <div class="col-6">
                                <div class="input-group">
                                    <span class="input-group-text">$</span>
                                    <input type="number" name="min_price" id="min_price" placeholder="Min"
                                        class="form-control">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="input-group">
                                    <span class="input-group-text">$</span>
                                    <input type="number" name="min_price" id="min_price" placeholder="Max"
                                        class="form-control">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="filter_wrap mb-4">
                        <h5>Ft</h5>
                        <div class="row g-2">
                            <div class="col-6">
                                <div class="input-group">
                                    <span class="input-group-text">$</span>
                                    <input type="number" name="min_price" id="min_price" placeholder="Min"
                                        class="form-control">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="input-group">
                                    <span class="input-group-text">$</span>
                                    <input type="number" name="min_price" id="min_price" placeholder="Max"
                                        class="form-control">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="filter_wrap availabililty_select mb-4">
                        <h5>Availability</h5>
                        <select name="availability" id="availability" class="form-control">
                            <option value="all dates">all dates</option>
                            <option value="30 days">in 30 days</option>
                            <option value="over 30 days">over 30 days</option>
                        </select>
                    </div>
                    <div class="filter_wrap mb-4">
                        <h5>duration of the rental</h5>
                        <div class="form-check">
                            <input class="form-check-input" name="duration" type="checkbox" value="" id="duration_1">
                            <label class="form-check-label" for="duration_1">
                                search titles only
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" name="duration" type="checkbox" value="" id="duration_2">
                            <label class="form-check-label" for="duration_2">
                                it has pictures
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" name="duration" type="checkbox" value="" id="duration_3">
                            <label class="form-check-label" for="duration_3">
                                posted today
                            </label>
                        </div>
                    </div>
                    <div class="filter_wrap mb-3">
                        <button type="button" class="reset">Reset</button>
                        <button type="submit" class="float-end">update search</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-lg-8 col-xl-9">
        <div class="main_body">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-3 row-cols-xl-4 g-2">
                <!-- product start -->
                @foreach ($ads as $key => $value)
                <div class="col mb-3">
                    <div class="prodouct_wrap">
                        <div class="product_img">
                            <a href="{{ route('frontend.details', $value->slug) }}">
                                <img src="{{ asset($value->thumbnail) }}" class="w-100" alt="image">
                            </a>
                        </div>
                        <div class="product_content">
                            <ul>
                                <li>
                                    <i class="la la-clock"></i>
                                    {{ date('d M, y', strtotime($value->created_at)) }}
                                </li>
                                <li>
                                    <i class="la la-map-marker"></i>
                                    {{ $value->city }}
                                    {{ isset($value->countries->name) ? ', ' .
                                    ucfirst(strtolower($value->countries->name)) : '' }}
                                </li>
                            </ul>
                            <h4>
                                <a href="{{ route('frontend.details', $value->slug) }}">
                                    {{ Str::limit($value->title, '40', '...') }}
                                </a>
                            </h4>
                            <h5>${{ $value->price }}</h5>
                        </div>
                    </div>
                </div>
                @endforeach
                <!-- product end -->
            </div>
        </div>
    </div>
</div>

@endsection
