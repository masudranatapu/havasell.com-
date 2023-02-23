<div class="container-fluid">
    <div class="row g-1">
        <div class="col-lg-9">
            @if (Route::is('frontend.search'))
                @php
                    $country_id = getCountryId();
                    $cities = DB::table('city')
                        ->where('country_id', $country_id)
                        ->orderBy('order_id','desc')
                        ->get();


                @endphp
                <form action="{{ route('frontend.search') }}" method="get" id="searchForm">
                    <a class="header_logo" name="logoLink" href="{{ route('frontend.index') }}">ffutS</a>
                    <div class="d-inline">
                        <select name="city" id="city" class="select2" onchange="serachSubmit()">
                            <option value="">All</option>
                            @foreach ($cities as $city)
                                <option value="{{ $city->slug }}"
                                    {{ request()->city ==  strtolower($city->slug) ? 'selected':'' }} >
                                    {{ ucfirst(strtolower($city->name)) }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="d-inline">
                        <select name="category" id="category" class="select2" onchange="serachSubmit()">
                            <option value="">All</option>
                            @if(isset($categories) && count($categories)>0)
                                @foreach ($categories as $cat)
                                    <option value="{{ $cat->slug }}" {{ request()->category ==  $cat->slug ? 'selected':'' }}>{{ $cat->name }}</option>
                                @endforeach
                            @endif
                        </select>
                    </div>
                    <div class="d-inline">
                        <select name="subcategory" id="subcategory" class="select2" onchange="serachSubmit()">
                            <option value="">All</option>
                                @if(isset($subcategories) && count($subcategories)>0)
                                @foreach ($subcategories as $scat)
                                    <option value="{{ $scat->slug }}" {{ request()->subcategory ==  $scat->slug ? 'selected':'' }}>{{ $scat->name }}</option>
                                @endforeach
                                @endif
                        </select>
                    </div>
                </form>
            @else
                <a class="header_logo" name="logoLink" href="{{ route('frontend.index') }}">ffutS</a>
                <div class="breadcrumb">
                    @yield('breadcrumb')
                </div>
            @endif
        </div>
        <div class="col-lg-3">
            <div class="header_end float-lg-end">
                <ul id="wishlist_count">
                    @if (auth()->guard('user')->check() && userWishlist() > 0)
                        <li><a href="{{ route('user.favourite') }}" class="badge text-bg-warning">
                                <i class="las la-star"></i> {{ userWishlist() }}
                                {{ userWishlist() > 1 ? 'favourites' : 'favourite' }}</a>
                        </li>
                    @endif
                    {{-- <li>
                        <a href="javascript:;" class="badge text-bg-danger">
                            <i class="las la-times-circle"></i> 2
                            hidden
                        </a>
                    </li> --}}
                    <li><a href="{{ route('frontend.post.create') }}">post</a></li>
                    @if (auth('user')->check())
                        <li><a href="{{ route('user.profile') }}">account</a></li>
                    @else
                        <li><a href="{{ route('signin') }}">account</a></li>
                    @endif
                </ul>
            </div>
        </div>
    </div>
</div>
