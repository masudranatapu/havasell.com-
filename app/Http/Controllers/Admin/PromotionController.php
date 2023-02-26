<?php

namespace App\Http\Controllers\Admin;

use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class PromotionController extends Controller
{
    public function index()
    {
        $data = DB::table('promotions')->where('status',1)->orderBy('order_id','DESC')->paginate(20);
        return view('admin.promotion.index', compact('data'));
    }

    public function create()
    {
        return view('admin.promotion.create');
    }

    public function edit($id)
    {
        $data = DB::table('promotions')->where('id',$id)->first();
        return view('admin.promotion.edit', compact('data'));
    }

    public function delete($id)
    {
        DB::table('promotions')->where('id',$id)->delete();

        return redirect()->route('promotion')->with('success', 'Promotion successfully deleted !');
    }

    public function update(Request $request,$id)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'price' => 'required',
            'status' => 'required',
            'order_id' => 'required',

        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        DB::table('promotions')->where('id',$id)->update([
            'title'=>$request->title,
            'price'=>$request->price,
            'status'=>$request->status,
            'order_id'=>$request->order_id,
            'updated_at'=>date('Y-m-d H:i:s'),
            'updated_by'=>Auth::user()->id,

        ]);

        return redirect()->route('promotion')->with('success', 'Promotion successfully updated!');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'price' => 'required',
            'status' => 'required',
            'order_id' => 'required',

        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        DB::table('promotions')->insert([
            'title' => $request->title,
            'price' => $request->price,
            'status' => $request->status,
            'order_id' => $request->order_id,
            'created_at' => date('Y-m-d H:i:s'),
            'created_by' => Auth::user()->id
        ]);

        return redirect()->route('promotion')->with('success', 'Promotion successfully created!');
    }


}
