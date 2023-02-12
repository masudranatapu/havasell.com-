<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;

class FrontendController extends Controller
{

    public function index()
    {
        return view('frontend.index');
    }

    public function shop()
    {
        return view('frontend.shop');
    }

    public function details()
    {
        return view('frontend.details');
    }

    public function about()
    {
        return view('frontend.about');
    }

    public function termsCondition(){
        return view('frontend.terms_conditon');
    }

    public function privacyPolicy(){
        return view('frontend.privacy_policy');
    }


}
