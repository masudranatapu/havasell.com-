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
                <div class="mb-4">
                    <p>please limit each posting to a single area and category, once per 48 hours</p>
                    <h6><span>what type of posting is this:</span> (see <a href="#">ban</a> list before posting.)
                    </h6>
                </div>
                <form action="#" method="post">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="job offer" name="category" id="category_1"
                            required>
                        <label class="form-check-label" for="category_1">
                            job offered
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_2"
                            required>
                        <label class="form-check-label" for="category_2">
                            gig offered (I'm hiring for a short-term, small or odd job)
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_3"
                            required>
                        <label class="form-check-label" for="category_3">
                            resume / job wanted
                        </label>
                    </div>
                    <br>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_4"
                            required>
                        <label class="form-check-label" for="category_4">
                            housing offered
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_5"
                            required>
                        <label class="form-check-label" for="category_5">
                            housing wanted
                        </label>
                    </div>
                    <br>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_6"
                            required>
                        <label class="form-check-label" for="category_6">
                            for sale by owner
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_7"
                            required>
                        <label class="form-check-label" for="category_7">
                            for sale by dealer
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_8"
                            required>
                        <label class="form-check-label" for="category_8">
                            wanted by owner
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_9"
                            required>
                        <label class="form-check-label" for="category_9">
                            wanted by dealer
                        </label>
                    </div>
                    <br>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_10"
                            required>
                        <label class="form-check-label" for="category_10">
                            service offered
                        </label>
                    </div>
                    <br>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_11"
                            required>
                        <label class="form-check-label" for="category_11">
                            community
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_12"
                            required>
                        <label class="form-check-label" for="category_12">
                            event / class
                        </label>
                    </div>

                    <div class="mt-5">
                        <button type="button" class="btn btn-light"><a href="{{ route('post.step.two') }}">Continue</a></button>
                    </div>

                </form>
            </div>
        </div>
    </div>
@endsection

@push('script')
@endpush
