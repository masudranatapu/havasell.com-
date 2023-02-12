@extends('frontend.layouts.app', ['nav' => 'yes'])

@push('style')

@endpush

@section('breadcrumb')
    <ul>
        <li>Jerusalem ></li>
        <li>case ></li>
        <li>offices and activities trade</li>
    </ul>
@endsection

@section('content')
    <div class="main_template mt-5">
        <div class="container">
            <div class="ad_post_form">
                <form action="#" method="post">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="ad_title" class="form-label">Ad title</label>
                                <input type="text" name="ad_title" id="ad_title" class="form-control"
                                    placeholder="enter your ad title" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="price" class="form-label">Price</label>
                                <input type="number" name="price" id="price" class="form-control"
                                    placeholder="ad price" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="city" class="form-label">City</label>
                                <input type="text" name="city" id="city" class="form-control"
                                    placeholder="your city" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="postal" class="form-label">Postal code</label>
                                <input type="text" name="postal" id="postal" class="form-control"
                                    placeholder="postal code" required>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="description" class="form-label">Description</label>
                                <textarea name="description" id="description" cols="30" rows="5" class="form-control"
                                    placeholder="description" style="height: 150px;"></textarea>
                            </div>
                        </div>

                        <div class="col-12 mb-3">
                            <div class="contact_details">
                                <div class="mb-3">
                                    <h6>Contact Details:</h6>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="email" class="form-label">Email</label>
                                            <input type="text" name="email" id="email" class="form-control"
                                                placeholder="your email address" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="phone" class="form-label">Phone</label>
                                            <input type="number" name="phone" id="phone" class="form-control"
                                                placeholder="phone" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="term_condition" required>
                                <label class="form-check-label" for="term_condition" style="font-size: 14px;">
                                    you agree to others contacting you for services, products or business
                                    interests
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="my-5 text-center">
                        <button type="submit" class="btn btn-light">Continue</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

@push('script')
@endpush
