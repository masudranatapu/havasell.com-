<footer class="footer_menu">
    <div class="container">
        <div class="row g-4">
            <div class="col-md-8">
                <div class="widget_heading mb-2">
                    <h3>Quick Links</h3>
                </div>
                <div class="footer_links">
                    <ul>
                        <li><a href="{{ route('frontend.faq') }}">{{ __('faq') }} |</a></li>
                        <li><a href="{{ route('frontend.search') }}">{{ __('Ads') }} |</a></li>
                        <li><a href="{{ route('frontend.privacy.policy') }}">{{ __('privacy') }} |</a></li>
                        <li><a href="{{ route('frontend.terms.condition') }}">{{ __('terms & conditions') }} |</a>
                        </li>
                        <li><a href="{{ route('frontend.about') }}">{{ __('about') }} |</a></li>
                        <li><a href="{{ route('frontend.contact') }}">{{ __('contact') }} |</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget_heading mb-2">
                    <h3>Social Media</h3>
                </div>
                <div class="social_links">
                    <ul>
                        <li>
                            <a href="#" target="_blank"><i class="la la-facebook"></i></a>
                            <a href="#" target="_blank"><i class="la la-twitter"></i></a>
                            <a href="#" target="_blank"><i class="la la-linkedin"></i></a>
                            <a href="#" target="_blank"><i class="la la-whatsapp"></i></a>
                            <a href="#" target="_blank"><i class="la la-pinterest"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="copyright text-center">
            <p>© {{ date('Y') }} Havasell</p>
        </div>
    </div>
</footer>