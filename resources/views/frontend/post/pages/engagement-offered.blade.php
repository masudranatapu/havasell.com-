<div class="row">
    <div class="col-12 mb-4">
        <!-- Contact Form -->
    <div class="form_wrapper">
        <div class="title mb-3">
            <h6>Contact Info</h6>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="text" name="email" id="email" value="{{ Auth::user()->email ?? old('email') }}" class="form-control"
                        placeholder="Your email address" required>
                </div>
                <div class="mb-3">
                    <span class="text-dark" style="font-weight:600;">email privacy
                        options</span>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="email_privacy"
                            id="privacy_1" value="CL mail relay">
                        <label class="form-check-label" for="privacy_1">
                            CL mail relay (recommended)
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="email_privacy"
                            id="privacy_2" value="show my real email address">
                        <label class="form-check-label" for="privacy_2">
                            show my real email address
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="email_privacy"
                            id="privacy_3" value="no replies to this email">
                        <label class="form-check-label" for="privacy_3">
                            no replies to this email
                        </label>
                    </div>
                </div>
            </div>
            <div class="col-md-8 inline_checkbox disabled_checked">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="show_phone"
                        value="1" id="show_phone">
                    <label class="form-check-label" for="show_phone">
                        show my phone number
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="phone_call"
                        id="calls_ok" disabled value="1">
                    <label class="form-check-label" for="calls_ok">
                        phone calls OK
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="phone_text"
                        id="textorsms" disabled value="1">
                    <label class="form-check-label" for="textorsms">
                        text/sms OK
                    </label>
                </div>
                <div class="row mt-1">
                    <div class="col-lg-6">
                        <div class="mb-1">
                            <label for="phone" class="form-label">Phone number</label>
                            <input type="number" name="phone" {{ old('phone') }} id="phone"
                                class="form-control" disabled>
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
                            <input type="text" name="contact_name" value="{{ old('contact_name')}}" id="contact_name"
                                class="form-control" disabled>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

    <div class="col-12">
        <div class="form-check">
            <input class="form-check-input" type="checkbox" id="term_condition" name="other_contact" value="1" required>
            <label class="form-check-label" for="term_condition" style="font-size: 14px;">
                ok for others to contact you about other services, products or commercial interests
            </label>
        </div>
    </div>
</div>