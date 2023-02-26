<div class="home_header sticky-top">
    <nav class="navbar navbar-expand-lg p-0">
        <div class="container-fluid">
            <a class="navbar-brand" href="{{ route('frontend.index') }}">
                <img src="{{ asset('frontend/images/logo.png') }}" width="124" alt="logo">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
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
                <ul class="navbar-nav ms-lg-auto align-items-lg-center mt-3">
                    @if (auth('user')->check())
                    <li class="nav-item">
                        <a class="nav-link " href="{{ route('user.profile') }}">{{ __('My Account') }}</a>
                    </li>
                    @else
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('signin') }}">{{ __('My Account') }}</a>
                    </li>
                    @endif
                    <li class="nav-item custom-list-style me-3">
                        <a href="{{ route('frontend.post.create') }}">{{ __('Create a
                            posting') }}</a>
                    </li>
                    <div class="btn-group language_dropdown">
                        <form action="{{ route('frontend.localization') }}" method="post">
                            @csrf
                            <select name="language" id="language" class="form-control form-select mb-3"
                                onchange="this.form.submit()">
                                <option value="en" @if (Session::get('locale')=='en' ) selected @endif>
                                    English
                                </option>
                                <option value="hi" @if (Session::get('locale')=='hi' ) selected @endif>Hindi
                                </option>
                            </select>
                        </form>
                    </div>
                </ul>
            </div>
        </div>
    </nav>
</div>