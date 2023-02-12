<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AdPostController extends Controller
{
    //
    public function postStepOne()
    {
        return view('frontend.post.step_one');
    }

    public function postStepTwo()
    {
        return view('frontend.post.step_two');
    }

    public function postStepThree()
    {
        return view('frontend.post.step_three');
    }
}
