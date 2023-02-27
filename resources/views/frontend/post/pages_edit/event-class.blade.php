@push('style')
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <style>
        .select2-selection--single{
            height: 35px !important;
        }
        .select2-selection__rendered{
            line-height: 35px !important;
        }
        .select2-selection__arrow{
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
                    <input type="text" name="venue" id="venue" value="{{ $ad->venue}}" class="form-control" >
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="mb-3 col-md-6">
                            <label for="datepicker" class="form-label">event start date</label>
                            <input type="text" name="event_start_date" value="{{ date('d M Y',strtotime($ad->event_start_date) }}" id="datepicker" class="form-control" required readonly>
                        </div>
                        <div class="mb-3 col-md-6">
                            <label for="event_duration" class="form-label">event duration</label>
                            <select type="text" name="event_duration" id="event_duration" class="form-control select2" >
                                @for ($i = 1; $i <= 14; $i++)
                                <option value="{{ $i }}" {{ $ad->event_duration == $i . ' days' ? "selected" : ""}}>{{ $i }} Days</option>
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
                            {{ isset($ad->services) && in_arrary('art/film',$ad->services)? "checked" : "" }}
                                id="art/film">
                            <label class="form-check-label" for="art/film">
                                art/film
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="fest/fair"
                            {{ isset($ad->services) && in_arrary('fest/fair',$ad->services)? "checked" : "" }}
                                id="fest/fair">
                            <label class="form-check-label" for="fest/fair">
                                fest/fair
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="literary"
                            {{ isset($ad->services) && in_arrary('literary',$ad->services)? "checked" : "" }}
                                id="literary">
                            <label class="form-check-label" for="literary">
                                literary
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="sustainability"
                            {{ isset($ad->services) && in_arrary('sustainability',$ad->services)? "checked" : "" }}
                                id="sustainability">
                            <label class="form-check-label" for="sustainability">
                                sustainability
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="career"
                            {{ isset($ad->services) && in_arrary('career',$ad->services)? "checked" : "" }}
                                id="career">
                            <label class="form-check-label" for="career">
                                career
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="fitness/health"
                            {{ isset($ad->services) && in_arrary('fitness/health',$ad->services)? "checked" : "" }}
                                id="fitness/health">
                            <label class="form-check-label" for="fitness/health">
                                fitness/health
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="music"
                            {{ isset($ad->services) && in_arrary('music',$ad->services)? "checked" : "" }}
                                id="music">
                            <label class="form-check-label" for="music">
                                music
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="tech"
                            {{ isset($ad->services) && in_arrary('tech',$ad->services)? "checked" : "" }}
                                id="tech">
                            <label class="form-check-label" for="tech">
                                tech
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="charitable"
                            {{ isset($ad->services) && in_arrary('charitable',$ad->services)? "checked" : "" }}
                                id="charitable">
                            <label class="form-check-label" for="charitable">
                                charitable
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="food/drink"
                            {{ isset($ad->services) && in_arrary('food/drink',$ad->services)? "checked" : "" }}
                                id="food/drink">
                            <label class="form-check-label" for="food/drink">
                                food/drink
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="outdoor"
                            {{ isset($ad->services) && in_arrary('outdoor',$ad->services)? "checked" : "" }}
                                id="outdoor">
                            <label class="form-check-label" for="outdoor">
                                outdoor
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="competition"
                            {{ isset($ad->services) && in_arrary('competition',$ad->services)? "checked" : "" }}
                                id="competition">
                            <label class="form-check-label" for="competition">
                                competition
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="free"
                            {{ isset($ad->services) && in_arrary('free',$ad->services)? "checked" : "" }}
                                id="free">
                            <label class="form-check-label" for="free">
                                free
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="sale"
                            {{ isset($ad->services) && in_arrary('sale',$ad->services)? "checked" : "" }}
                                id="sale">
                            <label class="form-check-label" for="sale">
                                sale
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="dance"
                            {{ isset($ad->services) && in_arrary('dance',$ad->services)? "checked" : "" }}
                                id="dance">
                            <label class="form-check-label" for="dance">
                                dance
                            </label>
                        </div>
                        <div class="form-check col-md-3">
                            <input class="form-check-input" type="checkbox" name="services[]" value="singles"
                            {{ isset($ad->services) && in_arrary('singles',$ad->services)? "checked" : "" }}
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
                    <input type="text" name="email" id="email"
                        value="{{ Auth::user()->email ?? old('email') }}" class="form-control"
                        placeholder="Your email address" required >
                </div>
                <div class="mb-3">
                    <span class="text-dark" style="font-weight:600;">email privacy
                        options</span>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="email_privacy" id="privacy_1"
                            value="CL mail relay" {{ $ad->email_privacy ? 'checked' : '' }}>
                        <label class="form-check-label" for="privacy_1">
                            CL mail relay (recommended)
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="email_privacy"
                            {{ $ad->email_privacy ? 'checked' : '' }} id="privacy_2"
                            value="show my real email address">
                        <label class="form-check-label" for="privacy_2">
                            show my real email address
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio"
                            name="email_privacy"{{ $ad->email_privacy ? 'checked' : '' }} id="privacy_3"
                            value="no replies to this email">
                        <label class="form-check-label" for="privacy_3">
                            no replies to this email
                        </label>
                    </div>
                </div>
            </div>
            <div class="col-md-8 inline_checkbox disabled_checked">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox"
                        name="show_phone"{{ $ad->show_phone ? 'checked' : '' }} value="1" id="show_phone">
                    <label class="form-check-label" for="show_phone">
                        show my phone number
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox"
                        name="phone_call"{{ $ad->phone_call ? 'checked' : '' }} id="calls_ok" disabled
                        value="1">
                    <label class="form-check-label" for="calls_ok">
                        phone calls OK
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox"
                        name="phone_text"{{ $ad->phone_text ? 'checked' : '' }} id="textorsms" disabled
                        value="1">
                    <label class="form-check-label" for="textorsms">
                        text/sms OK
                    </label>
                </div>
                <div class="row mt-1">
                    <div class="col-lg-6">
                        <div class="mb-1">
                            <label for="phone" class="form-label">Phone number</label>
                            <input type="number" name="phone" id="phone" class="form-control"
                                value="{{ $ad->phone }}" disabled>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="mb-1">
                            <label for="phone_2" class="form-label">Local number</label>
                            <input type="number" name="phone_2" value="{{ $ad->phone_2 }}" id="phone_2"
                                class="form-control" disabled>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="mb-1">
                            <label for="contact_name" class="form-label">contact name</label>
                            <input type="text" name="contact_name" value="{{ $ad->contact_name }}"
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
            <input class="form-check-input" type="checkbox" id="term_condition" {{ $ad->term_condition? "checked" : "" }} name="other_contact" value="1"
                >
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
