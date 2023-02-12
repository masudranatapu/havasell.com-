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
                    <h6><span>choose a category:</span> (see <a href="#">ban</a> list before posting.)
                    </h6>
                </div>
                <form action="#" method="post">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_1"
                            required>
                        <label class="form-check-label" for="category_1">
                            food/drinks/hospitality
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_2"
                            required>
                        <label class="form-check-label" for="category_2">
                            admin/department
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_3"
                            required>
                        <label class="form-check-label" for="category_3">
                            architect/engineer/cap <br />
                            (no IT/computer sector jobs)
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_4"
                            required>
                        <label class="form-check-label" for="category_4">
                            art/media/design
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_5"
                            required>
                        <label class="form-check-label" for="category_5">
                            customer service
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_6"
                            required>
                        <label class="form-check-label" for="category_6">
                            lawyer / ass. leg.
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_7"
                            required>
                        <label class="form-check-label" for="category_7">
                            beauty/spa/fitness
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_8"
                            required>
                        <label class="form-check-label" for="category_8">
                            accounting/finance
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_9"
                            required>
                        <label class="form-check-label" for="category_9">
                            etc.
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_10"
                            required>
                        <label class="form-check-label" for="category_10">
                            state entities
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="" name="category" id="category_11"
                            required>
                        <label class="form-check-label" for="category_11">
                            properties
                        </label>
                    </div>
                    <div class="mt-5">
                        <button type="button" class="btn btn-light"><a href="{{ route('post.step.three') }}">Continue</a></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

@push('script')
@endpush
