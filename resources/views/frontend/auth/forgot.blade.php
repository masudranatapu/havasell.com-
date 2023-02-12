@extends('frontend.layouts.app', ['nav' => 'yes'])

@push('style')
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <style>
        .login_form h1 {
            font-size: 16px;
            font-family: Arial, sans-serif;
            padding: 8px 5px;
        }

        .login_form p {
            font-size: 14px;
            color: #1C64AC;
            font-family: Arial, sans-serif;
        }

        .accountform-banner-one {
            border-radius: 2px;
            background-color: #d4d4d4;
            border: 1px solid #E4E4E4;
            font-weight: bold;
            padding: 8px 5px;
            text-align: center;
            margin-bottom: 16px;
        }
    </style>
@endpush

@section('breadcrumb')
    <ul>
        <li>Jerusalem > </li>
        <li>Set your password for account security</li>
    </ul>
@endsection

@section('content')
    <div class="main_template mt-5">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-6 col-lg-5">
                    <form action="{{ route('user.password.mail') }}" method="post" class="login_form border p-3 rounded">
                        @csrf
                        <h1 class="accountform-banner-one">Account password reset</h1>
                        <div class="alert alert-sm alert-info" role="alert">
                            <p>Enter your account email address to reset your password.</p>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" name="email" class="form-control" required placeholder="Email">
                        </div>
                        <div class="mb-3 text-center">
                            <button type="submit" class="btn btn-light">Reset Password</button>
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
