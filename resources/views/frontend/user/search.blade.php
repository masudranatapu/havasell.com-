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
                    <button class="nav-link" id="drafts-tab" data-bs-toggle="tab" data-bs-target="#drafts-tab-pane"
                        type="button" role="tab" aria-controls="drafts-tab-pane" aria-selected="false"><a
                            href="{{ route('user.drafts') }}">Drafts</a></button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="searches-tab" data-bs-toggle="tab"
                        data-bs-target="#searches-tab-pane" type="button" role="tab" aria-controls="searches-tab-pane"
                        aria-selected="false"><a href="{{ route('user.favourite') }}">Favourites</a></button>
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
                            <th width="10%">Date</th>
                            <th width="10%">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($wishlist as $key=> $item)

                        <tr>
                            <td>{{ $wishlist->firstItem() + $key }}</td>
                            <td>
                                <a href="{{route('frontend.details',$item->ad->slug?? "")}}"> {{$item->ad->title??
                                    ""}}</a>
                            </td>
                            <td>
                                {{ $item->ad->ad_type->name?? "" }}
                            </td>
                            <td>
                                {{ $item->ad->category->name?? "" }}
                            </td>
                            <td>
                                {{ $item->ad->subcategory->name?? "" }}
                            </td>
                            <td>
                                {{ $item->created_at->diffForHumans() }}
                            </td>
                            <td>
                                <a href="{{route('frontend.details', $item->ad->slug?? "")}}"
                                    class="btn btn-sm btn-secondary">View</a>
                                <a href="{{ route('user.favourite.delete', $item->id) }}"
                                    onclick="return confirm('Are you sure to remove from favourite?')"
                                    class="btn btn-sm btn-danger">Remove</a>
                            </td>
                        </tr>
                        @empty
                        <tr>
                            <td colspan="6" class="text-center">Not Found</td>
                        </tr>

                        @endforelse
                    </tbody>
                </table>
            </div>
            <div class="card-footer mb-5">
                <div class="d-flex justify-content-center">
                    {{ $wishlist->links() }}
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

@push('script')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<script>
    @if (Session::has('message'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.success("{{ session('message') }}");
        @endif

        @if (Session::has('error'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.error("{{ session('error') }}");
        @endif

        @if (Session::has('info'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.info("{{ session('info') }}");
        @endif

        @if (Session::has('warning'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.warning("{{ session('warning') }}");
        @endif
</script>
@endpush
