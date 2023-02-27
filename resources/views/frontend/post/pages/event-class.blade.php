@push('style')
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<style>
    .select2-selection--single {
        height: 35px !important;
    }

    .select2-selection__rendered {
        line-height: 35px !important;
    }

    .select2-selection__arrow {
        height: 35px !important;
    }
</style>
@endpush
<div class="row">
    <div class="col-12 mb-4">
        <div class="form_wrapper">
            <div class="title mb-3">
                <h6>posting details</h6>
            </div>
            <div class="row mb-3">
                <div class="mb-3">
                    <label for="venue" class="form-label">venue</label>
                    <input type="text" name="venue" id="venue" value="{{ old('venue') }}" class="form-control" >
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="mb-3 col-md-6">
                            <label for="datepicker" class="form-label">event start date</label>
                            <input type="text" name="event_start_date" value="{{ old('event_start_date')}}"
                                id="datepicker" class="form-control" required readonly>
                        </div>
                        <div class="mb-3 col-md-6">
                            <label for="event_duration" class="form-label">event duration</label>
                            <select type="text" name="event_duration" id="event_duration" class="form-control select2"
                                >
                                @for ($i = 1; $i <= 14; $i++) <option value="{{ $i }}">{{ $i }} Days</option>
                                    @endfor
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form_wrapper container-fluid" style="width:98%">
                    <div class="title mb-3">
                        <h6>event features (choose at lest one)</h6>
                    </div>
                    <div class="row mb-3 px-2">
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="art/film"
                                id="art/film">
                            <label class="form-check-label" for="art/film">
                                art/film
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="fest/fair"
                                id="fest/fair">
                            <label class="form-check-label" for="fest/fair">
                                fest/fair
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="literary"
                                id="literary">
                            <label class="form-check-label" for="literary">
                                literary
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="sustainability"
                                id="sustainability">
                            <label class="form-check-label" for="sustainability">
                                sustainability
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="career"
                                id="career">
                            <label class="form-check-label" for="career">
                                career
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="fitness/health"
                                id="fitness/health">
                            <label class="form-check-label" for="fitness/health">
                                fitness/health
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="music" id="music">
                            <label class="form-check-label" for="music">
                                music
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="tech" id="tech">
                            <label class="form-check-label" for="tech">
                                tech
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="charitable"
                                id="charitable">
                            <label class="form-check-label" for="charitable">
                                charitable
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="food/drink"
                                id="food/drink">
                            <label class="form-check-label" for="food/drink">
                                food/drink
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="outdoor"
                                id="outdoor">
                            <label class="form-check-label" for="outdoor">
                                outdoor
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="competition"
                                id="competition">
                            <label class="form-check-label" for="competition">
                                competition
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="free" id="free">
                            <label class="form-check-label" for="free">
                                free
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="sale" id="sale">
                            <label class="form-check-label" for="sale">
                                sale
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="dance" id="dance">
                            <label class="form-check-label" for="dance">
                                dance
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="singles"
                                id="singles">
                            <label class="form-check-label" for="singles">
                                singles
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-12 mb-4">
        <!-- Contact Form -->
        <div class="form_wrapper">
            <div class="title mb-3">
                <h6>Contact Info</h6>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="mb-3">
                        <label for="email" class="form-label">Email <span class="text-danger">*</span></label>
                        <input type="text" name="email" id="email" value="{{ Auth::user()->email ?? old('email') }}"
                            class="form-control" placeholder="Your email address" required >
                    </div>
                    <div class="mb-3">
                        <span class="text-dark" style="font-weight:600;">email privacy
                            options</span>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="email_privacy" id="privacy_1"
                                value="CL mail relay" checked>
                            <label class="form-check-label" for="privacy_1">
                                CL mail relay (recommended)
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="email_privacy" id="privacy_3"
                                value="no replies to this email">
                            <label class="form-check-label" for="privacy_3">
                                no replies to this email
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 inline_checkbox disabled_checked">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="show_phone" value="1" id="show_phone">
                        <label class="form-check-label" for="show_phone">
                            show my phone number
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="phone_call" id="calls_ok" disabled
                            value="1">
                        <label class="form-check-label" for="calls_ok">
                            phone calls OK
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="phone_text" id="textorsms" disabled
                            value="1">
                        <label class="form-check-label" for="textorsms">
                            text/sms OK
                        </label>
                    </div>
                    <div class="row mt-1">
                        <div class="col-lg-6">
                            <div class="mb-1">
                                <label for="phone" class="form-label">Phone number</label>
                                <input type="number" name="phone" {{ old('phone') }} id="phone" class="form-control"
                                    disabled>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-1">
                                <label for="phone_2" class="form-label">Local number</label>
                                <input type="number" name="phone_2" value="{{ old('phone_2') }}" id="phone_2"
                                    class="form-control" disabled>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-1">
                                <label for="contact_name" class="form-label">contact name</label>
                                <input type="text" name="contact_name" value="{{ old('contact_name') }}"
                                    id="contact_name" class="form-control" disabled>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-12">
        <div class="form-check">
            <input class="form-check-input" type="checkbox" id="term_condition" name="other_contact" value="1" >
            <label class="form-check-label" for="term_condition" style="font-size: 14px;">
                ok for others to contact you about other services, products or commercial interests
            </label>
        </div>
    </div>
</div>

@push('script')
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script>
    $(function() {
            $("#datepicker").datepicker({
                minDate: 'today',
                // maxDate: '+10D',
            });
        });
        $(document).ready(function() {
        $(".select2").select2();
        });
</script>
@endpush
