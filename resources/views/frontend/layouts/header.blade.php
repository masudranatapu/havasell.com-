<div class="home_header sticky-top">
    <nav class="navbar navbar-expand-lg p-0">
        <div class="container-fluid">
            <a class="navbar-brand" href="{{ route('frontend.index') }}">
                <img src="{{ asset( $setting->logo_image ?? 'frontend/images/logo.png') }}" width="124" alt="logo">
            </a>
            <ul class="navbar-nav d-block d-lg-none">
                <li class="nav-item">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </li>
                <li class="nav-item custom-list-style">
                    <a href="{{ route('frontend.post.create') }}">
                        <i class="la la-plus d-block d-sm-none"></i>
                        {{ __('Create a posting') }}
                    </a>
                </li>
            </ul>


            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('frontend.about') }}">{{ __('About') }}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('frontend.contact') }}">{{ __('Contact') }}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('frontend.search') }}">{{ __('Ads') }}</a>
                    </li>
                </ul>
                <ul class="navbar-nav ms-lg-auto align-items-lg-center mt-1">
                    @if (auth('user')->check())
                    <li class="nav-item">
                        <a class="nav-link " href="{{ route('user.profile') }}">{{ __('My Account') }}</a>
                    </li>
                    @else
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('signin') }}">{{ __('My Account') }}</a>
                    </li>
                    @endif
                    <li class="nav-item custom-list-style me-3 d-none d-lg-block">
                        <a href="{{ route('frontend.post.create') }}">{{ __('Create a
                            posting') }}</a>
                    </li>
                    <div class="btn-group language_dropdown">
                        <form action="{{ route('frontend.localization') }}" method="post">
                            @csrf
                            <div class="form-group">
                                <select name="language" id="language" class="form-control form-select"
                                    onchange="this.form.submit()">

                                    {{-- <option value="en" @if (Session::get('locale')=='en' ) selected @endif>
                                        English
                                    </option>
                                    <option value="hi" @if (Session::get('locale')=='hi' ) selected @endif>Hindi
                                    </option> --}}
                                    @foreach($languages as $key => $value)
                                    <option value="{{ $value->code }}" @if (Session::get('locale')== $value->code) selected @endif>{{ $value->name }}</option>
                                    @endforeach

                                </select>
                            </div>
                        </form>
                    </div>
                </ul>
            </div>
        </div>
    </nav>
</div>
