@extends('admin.layouts.app')

@section('title')
    {{ __('Promotions') }}
@endsection
@section('promotion', 'active')
@section('content')
    <div class="">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex justify-content-between">
                            <h3 class="card-title line-height-36">{{ __('Promotions') }}</h3>
                                <div>
                                    <a href="{{ route('promotion.create') }}" class="btn bg-info"><i class="fas fa-plug"></i>
                                        &nbsp;{{ __('create') }}
                                    </a>
                                </div>
                        </div>
                    </div>
                    <div class="card-body text-center table-responsive p-0">
                        <table class="table table-hover text-nowrap table-bordered">
                            <thead>
                                <tr>
                                    <th>{{ __('sl') }}</th>
                                    <th>{{ __('title') }}</th>
                                    <th>{{ __('price') }}</th>
                                    <th width="10%">{{ __('action') }}</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($data as $key=>$row)
                                    <tr>
                                        <td>
                                            #{{ $key+1 }}
                                        </td>

                                        <td>
                                            {{ $row->title }}
                                        </td>
                                        <td class="text-capitalize">
                                            {{ number_format($row->price,2) }}
                                        </td>

                                        {{-- <td class="text-muted">
                                            {{ formatTime($row->created_at, 'M d, Y') }}
                                        </td> --}}

                                        <td class="d-flex justify-content-center">
                                            <a href="{{ route('promotion.edit', $row->id) }}" class="btn bg-primary mr-1">
                                                <i class="fas fa-pen"></i>
                                            </a>
                                            {{-- <a href="{{ route('promotion.delete', $row->id) }}" class="btn bg-primary mr-1" onclick="if (confirm('Are you sure delete this item?')){return true;}else{event.stopPropagation(); event.preventDefault();};" >
                                                <i class="fas fa-trash"></i>
                                            </a> --}}
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="9">
                                            <div class="empty py-5">
                                                <x-not-found route="" message="{{ __('no_data_found') }}" />
                                            </div>
                                        </td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                    @if ($data->total() > $data->count())
                        <div class="mt-3 d-flex justify-content-center">{{ $data->links() }}</div>
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection
@section('script')
@endsection
@section('style')
@endsection
