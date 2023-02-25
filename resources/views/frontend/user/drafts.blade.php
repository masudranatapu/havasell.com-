@extends('frontend.layouts.app', ['nav' => 'yes'])

@push('style')
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
<style>
    td {
        border: 1px solid #EEE !important;
        vertical-align: middle;
    }

    tr th {
        border: 1px solid #cdc9c9 !important;
        background: #d8d8d8 !important;
    }
</style>
@endpush

@section('breadcrumb')
<ul>
    <li>User Profile > </li>
    <li>{{ $user->name }}</li>
</ul>
@endsection

@section('content')
<div class="main_body pt-5 pb-5">
    <div class="container-fluid">


        <div class="user_dashboard mb-4">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="posting-tab" data-bs-toggle="tab" data-bs-target="#posting-tab-pane"
                        type="button" role="tab" aria-controls="posting-tab-pane" aria-selected="true"><a
                            href="{{ route('user.profile') }}">Posting</a></button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="drafts-tab" data-bs-toggle="tab"
                        data-bs-target="#drafts-tab-pane" type="button" role="tab" aria-controls="drafts-tab-pane"
                        aria-selected="false"><a href="{{ route('user.drafts') }}">Drafts</a></button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="searches-tab" data-bs-toggle="tab" data-bs-target="#searches-tab-pane"
                        type="button" role="tab" aria-controls="searches-tab-pane" aria-selected="false"><a
                            href="{{ route('user.favourite') }}">Favourites</a></button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="setting-tab" data-bs-toggle="tab" data-bs-target="#setting-tab-pane"
                        type="button" role="tab" aria-controls="setting-tab-pane" aria-selected="false"><a
                            href="{{ route('user.setting') }}">Settings</a></button>
                </li>
            </ul>
        </div>
        <div class="user_dashboard_wrap">
            <div class="table-responsive">
                <table class="table table-hover" style="min-width: 950px;">
                    <thead>
                        <tr>
                            <th width="5%">Sl No</th>
                            <th width="30%">Posting</th>
                            <th width="10%">Ad Type</th>
                            <th width="10%">Category</th>
                            <th width="10%">Sub Category</th>
                            <th width="10%">Area</th>
                            <th width="10%">Status</th>
                            <th width="15%">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($ads as $key=> $ad)
                        <tr>
                            <td>{{ $ads->firstItem() + $key }}</td>
                            <td>
                                <a href="{{route('frontend.details', $ad->slug)}}"> {{$ad->title}}</a>
                            </td>
                            <td>
                                {{$ad->ad_type->name}}
                            </td>
                            <td>
                                {{$ad->category->name}}
                            </td>
                            <td>
                                {{$ad->subCategory->name}}
                            </td>
                            <td>
                                {{$ad->city}} {{ isset($ad->countries->name) ? ', '
                                .ucfirst(strtolower($ad->countries->name)) : ''}}
                            </td>
                            <td>
                                <a href="{{ route('user.post.statusUpdate', [$ad->id, 'active']) }}"
                                    class="btn btn-sm btn-danger">Unpublished</a>
                            </td>
                            <td>
                                <a href="{{route('frontend.details', $ad->slug)}}"
                                    class="btn btn-sm btn-success">View</a>
                                <a href="{{ route('user.post.edit',$ad->slug) }}"
                                    class="btn btn-sm btn-secondary">Edit</a>
                                <a href="{{ route('user.post.delete', $ad->id) }}"
                                    onclick="return confirm('Are you sure to delete?')"
                                    class="btn btn-sm btn-danger">Delete</a>
                            </td>
                        </tr>
                        @empty
                        <tr>
                            <td colspan="7" class="text-center">Not Found</td>
                        </tr>

                        @endforelse
                    </tbody>
                </table>
            </div>
            <div class="card-footer mb-5">
                <div class="d-flex justify-content-center">
                    {{ $ads->links() }}
                </div>
            </div>
        </div>
    </div>
</div>


@endsection
