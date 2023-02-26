<?php

namespace App\Http\Controllers\Payment;

use Stripe\Charge;
use Stripe\Stripe;
use Stripe\Customer;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Modules\Plan\Entities\Plan;
use App\Http\Traits\PaymentTrait;
use App\Http\Controllers\Controller;
use App\Models\Promotion;
use App\Notifications\MembershipUpgradeNotification;
use Modules\Ad\Entities\Ad;

class StripeController extends Controller
{
    use PaymentTrait;

    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function stripePost(Request $request)
    {
        // dd($request->all());
        $ad = Ad::find($request->ad_id);
        $promotion = Promotion::find($request->promotions_id);
        session()->put('ad_id', $ad->id);
        session()->put('promotion_id', $promotion->id);
        $amount = $promotion->price * 100 ;
        $converted_amount = currencyConversion($promotion->price);

        session(['order_payment' => [
            'payment_provider' => 'stripe',
            'amount' =>  $converted_amount,
            'currency_symbol' => '$',
            'usd_amount' =>  $converted_amount,
        ]]);

        try {

            Stripe::setApiKey(config('zakirsoft.stripe_secret'));

            $charge = Charge::create([
                "amount" => $amount,
                "currency" => 'USD',
                "source" => $request->stripeToken,
                "description" => "Payment for " . $ad->title . " plan" . " in " . config('app.name'),
            ]);

            session(['transaction_id' => $charge->id ?? null]);

            $this->orderPlacing();

        } catch (\Exception $ex) {
            return $ex->getMessage();
        }

    }
}
