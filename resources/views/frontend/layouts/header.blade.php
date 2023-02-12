<div class="container-fluid">
    <div class="row g-1">
        <div class="col-lg-9">
            @if(Route::is('shop'))
                <form action="#" method="post">
                    <a class="header_logo" name="logoLink" href="{{ route('index') }}">CL</a>
                    <div class="d-inline">
                        <select name="country" id="country">
                            <option value="">Bangladesh</option>
                            <option value="">India</option>
                            <option value="">Pakistan</option>
                            <option value="">China</option>
                            <option value="">Jerusalem</option>
                        </select>
                    </div>
                    <div class="d-inline">
                        <select name="" id="">
                            <option value="">Bangladesh</option>
                            <option value="">India</option>
                            <option value="">Pakistan</option>
                            <option value="">China</option>
                            <option value="">Jerusalem</option>
                        </select>
                    </div>
                    <div class="d-inline">
                        <select name="" id="">
                            <option value="">Bangladesh</option>
                            <option value="">India</option>
                            <option value="">Pakistan</option>
                            <option value="">China</option>
                            <option value="">Jerusalem</option>
                        </select>
                    </div>
                </form>
            @else
                <a class="header_logo" name="logoLink" href="{{ route('index') }}">CL</a>
                <div class="breadcrumb">
                    @yield('breadcrumb')
                </div>
            @endif
        </div>
        <div class="col-lg-3">
            <div class="header_end float-lg-end">
                <ul>
                    <li><a href="javascript:;" class="badge text-bg-warning">
                        <i class="las la-star"></i> 2 favourites</a>
                    </li>
                    <li>
                        <a href="javascript:;" class="badge text-bg-danger">
                            <i class="las la-times-circle"></i> 2
                            hidden
                        </a>
                    </li>
                    <li><a href="{{ route('post.step.one') }}">post</a></li>
                    @if(auth('user')->check())
                        <li><a href="{{ route('user.profile') }}">account</a></li>
                    @else
                        <li><a href="{{ route('signin') }}">account</a></li>
                    @endif
                </ul>
            </div>
        </div>
    </div>
</div>
