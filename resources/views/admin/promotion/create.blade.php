@extends('admin.layouts.app')
@section('title')
    {{ __('Promotions') }}
@endsection
@section('promotion', 'active')
<?php
$tabindex =1;
?>
@section('content')
    <div class="">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex justify-content-between">
                            <h3 class="card-title line-height-36">{{ __('Promotions') }}</h3>
                                <div>
                                    <a href="{{ route('promotion') }}" class="btn bg-info"><i class="fas fa-list-alt"></i>
                                        &nbsp;{{ __('List') }}
                                    </a>
                                </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('promotion.store') }}" method="post"
                            id="promotion_form">
                            @csrf
                            <div class="row pt-3 pb-4">

                                <div class="col-md-6 col-lg-6">
                                    <div class="form-group {!! $errors->has('title') ? 'error' : '' !!}">
                                        <label for="title">{{ __('Title')}} <span
                                                class="text-danger">*</span></label>
                                        <div class="controls">
                                            <input type="text" name="title" id="title" value=""
                                                class="form-control mb-1" placeholder="title"
                                                tabindex="{{ $tabindex++ }}" required>
                                            {!! $errors->first('title', '<label
                                                class="help-block text-danger">:message</label>') !!}
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-6">
                                    <div class="form-group {!! $errors->has('price') ? 'error' : '' !!}">
                                        <label for="price">{{ __('price')}} <span
                                                class="text-danger">*</span></label>
                                        <div class="controls">
                                            <input type="text" name="price" id="price" value=""
                                                class="form-control mb-1" placeholder="price"
                                                tabindex="{{ $tabindex++ }}" required step="any">
                                            {!! $errors->first('price', '<label
                                                class="help-block text-danger">:message</label>') !!}
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6">
                                    <div class="form-group {!! $errors->has('order_id') ? 'error' : '' !!}">
                                        <label for="order_id">{{ __('order id')}} <span
                                                class="text-danger">*</span></label>
                                        <div class="controls">
                                            <input type="number" name="order_id" id="order_id" value=""
                                                class="form-control mb-1" placeholder="order id"
                                                tabindex="{{ $tabindex++ }}" required>
                                            {!! $errors->first('order_id', '<label
                                                class="help-block text-danger">:message</label>') !!}
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-6">
                                    <div class="form-group {!! $errors->has('status') ? 'error' : '' !!}">
                                        <label for="status">{{ __('Is Active')}}</label>
                                        <div class="controls">
                                            <select id="status" class="form-control" name="status"
                                                tabindex="{{ $tabindex++ }}" required>
                                                <option value="1">{{
                                                    __('Yes')}}</option>
                                                <option value="0">{{
                                                    __('No')}}</option>
                                            </select>
                                            {!! $errors->first('status', '<label
                                                class="help-block text-danger">:message</label>') !!}
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 mb-3">
                                    <div class="form-actions text-center">
                                        <a href="{{route('promotion')}}" class="btn btn-warning mr-1"><i
                                                class="la la-times"></i> {{ __('Cancel')}}</a>
                                        <button type="submit" class="btn bg-primary bg-darken-1 text-white">
                                            <i class="la la-check-square-o"></i> {{ __('Save')}} </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
@section('script')
@endsection
@section('style')
@endsection
