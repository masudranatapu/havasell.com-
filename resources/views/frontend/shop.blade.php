@extends('frontend.layouts.app', ['nav' => 'yes'])
@section('title')
    {{ __('Shop') }}
@endsection
@section('content')


    <div class="row g-0">
        <div class="col-lg-4 col-xl-3">
            <div class="sidebar_left overflow-hidden">
                <div class="shop_filter p-3">
                    <form action="{{ route('frontend.search') }}" method="get" id="searchFrm">
                        @if (request()->has('category'))
                            <input type="hidden" name="category" value="{{ request()->category }}">
                        @endif
                        @if (request()->has('category') && isset($subcategories) && $subcategories->count() > 0)
                            <div class="filter_category mb-3">
                                <h5>Sub Categories</h5>
                                @foreach ($subcategories as $item)
                                    <div class="form-check">
                                        <input class="form-check-input" name="subcategory[]" type="checkbox"
                                            value="{{ $item->slug }}" id="subcategory{{ $item->id }}"
                                            {{ request()->has('subcategory') && in_array($item->slug, request()->subcategory) ? 'checked' : '' }}
                                            onchange="this.form.submit()">
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
                                <input class="form-check-input" name="sort" type="radio" value="latest" id="sort_1"
                                    {{ request()->has('sort') && request()->sort == 'latest' ? 'checked' : '' }}
                                    onchange="this.form.submit()">
                                <label class="form-check-label" for="sort_1">
                                    Latest
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" name="sort" type="radio" value="oldest" id="sort_2"
                                    {{ request()->has('sort') && request()->sort == 'oldest' ? 'checked' : '' }}
                                    onchange="this.form.submit()">
                                <label class="form-check-label" for="sort_2">
                                    Oldest
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" name="sort" type="radio" value="asc" id="sort_3"
                                    {{ request()->has('sort') && request()->sort == 'asc' ? 'checked' : '' }}
                                    onchange="this.form.submit()">
                                <label class="form-check-label" for="sort_3">
                                    Ascending
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" name="sort" type="radio" value="desc" id="sort_4"
                                    {{ request()->has('sort') && request()->sort == 'desc' ? 'checked' : '' }}
                                    onchange="this.form.submit()">
                                <label class="form-check-label" for="sort_4">
                                    Descending
                                </label>
                            </div>
                        </div>
                        <div class="filter_wrap mb-3">
                            <label for="" class="form-label">offices and activities trade</label>
                            <div class="form-check">
                                <input class="form-check-input" name="post[]" type="checkbox" value="title"
                                    id="duration_1"
                                    {{ request()->has('post') && in_array('title', request()->post) ? 'checked' : '' }}
                                    onchange="this.form.submit()">
                                <label class="form-check-label" for="duration_1">
                                    it has title
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" name="post[]" type="checkbox" value="image"
                                    id="duration_2"
                                    {{ request()->has('post') && in_array('image', request()->post) ? 'checked' : '' }}
                                    onchange="this.form.submit()">
                                <label class="form-check-label" for="duration_2">
                                    it has pictures
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" name="post[]" type="checkbox" value="today"
                                    id="duration_3"
                                    {{ request()->has('post') && in_array('today', request()->post) ? 'checked' : '' }}
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
                            <a href="{{ route('frontend.search') }}" class="reset btn-sm btn btn-danger">Reset</a>
                            <button type="submit" class="float-end">update search</button>
                        </div>
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
                                @if($value->featured == 1)
                                    @if($value->feature_duration > now())
                                        <div class="featured_tag">
                                            <span>Featured</span>
                                        </div>
                                    @endif
                                @endif
                                <div class="product_img">
                                    <a href="{{ route('frontend.details', $value->slug) }}">
                                        <img src="@if($value->thumbnail){{ asset($value->thumbnail) }} @else {{asset('frontend/images/no-img.png')}}  @endif" class="w-100" alt="image">
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
                                            {{ isset($value->countries->name) ? ', ' . ucfirst(strtolower($value->countries->name)) : '' }}
                                        </li>
                                    </ul>
                                    <h4>
                                        <a href="{{ route('frontend.details', $value->slug) }}">
                                            {{ Str::limit($value->title, '40', '...') }}
                                        </a>
                                    </h4>
                                    <h5>{{ isset($value->price) ? '$'.$value->price: 'N/A' }}</h5>
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
