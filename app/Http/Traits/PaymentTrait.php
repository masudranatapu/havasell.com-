<?php

namespace App\Http\Traits;

use App\Models\Setting;
use App\Models\UserPlan;
use App\Models\Transaction;
use App\Notifications\MembershipUpgradeNotification;

trait PaymentTrait
{
    public function orderPlacing($redirect = true)
    {
        // fetch session data
        $plan = session('plan');
        $order_amount = session('order_payment');
        $transaction_id = session('transaction_id') ?? uniqid('tr_');

        // Plan benefit attach to user
        $this->userPlanInfoUpdate($plan);

        // Transaction create
        Transaction::create([
            'order_id' => rand(1000, 999999999),
            'transaction_id' =>  $transaction_id,
            'plan_id' => $plan->id,
            'user_id' => auth('user')->id(),
            'payment_provider' => $order_amount['payment_provider'],
            'amount' => $order_amount['amount'],
            'currency_symbol' => $order_amount['currency_symbol'],
            'usd_amount' => $order_amount['usd_amount'],
            'payment_status' => 'paid',
        ]);

        // Store plan benefit in session and forget session
        storePlanInformation();
        $this->forgetSessions();

        // create notification and send mail to customer
        if (checkMailConfig()) {
            $user = auth('user')->user();
            if (checkSetup('mail')) {
                $user->notify(new MembershipUpgradeNotification($user, $plan->label));
            }
        }

        // redirect to customer billing
        if ($redirect) {
            session()->flash('success', 'Plan purchased successfully');
            return redirect()->route('frontend.plans-billing')->send();
        }
    }

    private function forgetSessions()
    {
        session()->forget('plan');
        session()->forget('order_payment');
        session()->forget('transaction_id');
        session()->forget('stripe_amount');
        session()->forget('razor_amount');
    }


    /**
     * Update userplan information.
     *
     * @param Plan $plan
     * @return boolean
     */
    public function userPlanInfoUpdate($plan, $user_id = null)
    {
        $setting = Setting::first();

        $userplan = UserPlan::customerData($user_id)->first();
        $userplan->ad_limit = $userplan->ad_limit + $plan->ad_limit;
        $userplan->featured_limit = $userplan->featured_limit + $plan->featured_limit;
        if (!$userplan->badge) {
            $userplan->badge = $plan->badge ? true : false;
        }

        if ($setting->subscription_type == 'recurring') {
            $userplan->subscription_type = 'recurring';

            if ($plan->interval == 'monthly') {
                $userplan->expired_date = now()->addMonth();
            } elseif ($plan->interval == 'yearly') {
                $userplan->expired_date = now()->addYear();
            } else {
                $userplan->expired_date = now()->addDays($plan->custom_interval_days);
            }

            $userplan->current_plan_id = $plan->id;
            $userplan->is_restored_plan_benefits = 0;
        } else {
            $userplan->subscription_type = 'one_time';
        }

        $userplan->save();

        return true;
    }

    /**
     * Create a new transaction instance.
     *
     * @param string $order_id
     * @param string $payment_provider
     * @param int $payment_amount
     * @param int $plan_id
     *
     * @return boolean
     */
    public function createTransaction(string $order_id, string $payment_provider, int $payment_amount, int $plan_id)
    {
        Transaction::create([
            'order_id' => $order_id,
            'user_id' => auth('user')->id(),
            'plan_id' => $plan_id,
            'payment_provider' => $payment_provider,
            'amount' => $payment_amount,
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}
