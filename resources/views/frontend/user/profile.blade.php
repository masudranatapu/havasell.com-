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
        .custom-select-style{
            border: 1px solid #fff;
            background: #E8E8E8;
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
                        <button class="nav-link active" id="posting-tab" data-bs-toggle="tab"
                            data-bs-target="#posting-tab-pane" type="button" role="tab"
                            aria-controls="posting-tab-pane" aria-selected="true"><a
                                href="{{ route('user.profile') }}">Posting</a></button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="drafts-tab" data-bs-toggle="tab" data-bs-target="#drafts-tab-pane"
                            type="button" role="tab" aria-controls="drafts-tab-pane" aria-selected="false"><a
                                href="{{ route('user.drafts') }}">Drafts</a></button>
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
                                <th width="25%">Posting</th>
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
                                        <a href="{{ route('frontend.details', $ad->slug) }}"> {{ $ad->title }}</a>
                                        <br>
                                        @if ($ad->feature_duration > now())
                                            <a href="javascript:;" class="text-success">Featured</a>
                                        @else
                                            <a href="javascript:;"
                                                onclick="promoteAd({{ $ad->id }}, '{{ $ad->title }}')"
                                                class="text-danger">Promote Ad</a>
                                        @endif
                                    </td>
                                    <td>
                                        {{ $ad->ad_type->name }}
                                    </td>
                                    <td>
                                        {{ $ad->category->name }}
                                    </td>
                                    <td>
                                        {{ $ad->subCategory->name }}
                                    </td>
                                    <td>
                                        {{ $ad->city }}
                                        {{ isset($ad->countries->name) ? ', ' . ucfirst(strtolower($ad->countries->name)) : '' }}
                                    </td>
                                    <td>
                                        <a href="{{ route('user.post.statusUpdate', [$ad->id, 'pending']) }}"
                                            onclick="return confirm('Are you sure to unpubliushed?')"
                                            class="btn btn-sm btn-success">Published</a>
                                    </td>
                                    <td>
                                        <a href="{{ route('frontend.details', $ad->slug) }}"
                                            class="btn btn-sm btn-success">View</a>
                                        <a href="{{ route('user.post.edit', $ad->slug) }}"
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
                <!-- Modal -->
                <div class="modal fade" id="promoteModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Featured your ad</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                </button>
                            </div>
                            <form action="{{ route('frontend.ad.promotion') }}" method="POST">
                                @csrf
                                <input type="hidden" id="productid" name="product_id">
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-md-12 mt-3">
                                           <div class="form-group">
                                                 <label for="">Product Name</label>
                                                 <input type="text" id="productName" readonly class="form-control">
                                           </div>
                                        </div>
                                        <div class="col-md-12 mt-3">
                                            <div class="form-group">
                                                <label>Promotion</label>
                                                    <select name="promotion_id" class="form-control custom-select-style" required="">
                                                        @foreach ($promotions as $promotion)
                                                            <option value="{{ $promotion->id }}">
                                                                {{ $promotion->title . ' ' . 'for' . ' ' . '$' . number_format($promotion->price, 2) }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary"
                                        data-bs-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary">Next</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('script')
    <script>
        function promoteAd(id, title) {
            // alert(id);
            // alert(title);
            $("#promoteModal").modal('show');
            $("#productid").val(id);
            $("#productName").val(title);
        }
    </script>
@endpush
