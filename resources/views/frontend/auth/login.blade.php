@extends('frontend.layouts.app', ['nav' => 'yes'])

@push('style')
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <style>
        .forgotpassword {
            text-decoration: underline !important;
            text-align: end;
            display: inherit;
            margin-top: 5px;
        }
    </style>
@endpush

@section('breadcrumb')
    <ul>
        <li>Jerusalem > </li>
        <li>Login & Register</li>
    </ul>
@endsection

@section('content')
    <div class="main_template mt-5">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-6 col-lg-5">
                    <form action="{{ route('user.signin') }}" method="post" class="login_form border p-3 rounded">
                        @csrf
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="text" name="email" id="email" class="form-control" required
                                value="{{ old('email') }}" placeholder="Email Address">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" name="password" id="password" class="form-control" required
                                placeholder="Password">
                            <a class="forgotpassword" href="{{ route('user.forgot.password') }}">Forgot password ?</a>
                        </div>
                        <div class="mb-3">
                        </div>
                        <div class="mb-3 text-center">
                            <button type="submit" class="btn btn-light">Login</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row d-flex justify-content-center py-4">
                <div class="col-md-6 text-center">Or</div>
            </div>
            <div class="row d-flex justify-content-center">
                <div class="col-md-6 col-lg-5">
                    <form action="{{ route('user.signup') }}" method="post" class="login_form border p-3 rounded">
                        @csrf
                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" name="email" class="form-control" required placeholder="Email Address">
                        </div>
                        <div class="mb-3 text-center">
                            <button type="submit" class="btn btn-light">Create Account</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('script')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <script>
        @if (Session::has('message'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.success("{{ session('message') }}");
        @endif

        @if (Session::has('error'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.error("{{ session('error') }}");
        @endif

        @if (Session::has('info'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.info("{{ session('info') }}");
        @endif

        @if (Session::has('warning'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.warning("{{ session('warning') }}");
        @endif
    </script>
@endpush
