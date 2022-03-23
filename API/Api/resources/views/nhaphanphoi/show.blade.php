@extends('layout.app')
@section('content')
    <div class="card">
        <div class="card-body">
            <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                <div class="row">
                    <div class="col-12">
                        <h2 class="tm-block-title d-inline-block">Nhà phân phối</h2>
                    </div>
                </div>
                <div class="row tm-edit-product-row">
                    <div class="col-xl-6 col-lg-6 col-md-12">
                        <form class="tm-edit-product-form">
                            <div class="form-group mb-3">
                                <label>Nhà phân phối
                                </label>
                                <input disabled type="text" value="{{ $nhaphanphoi->TenNhaPhanPhoi }}" class="form-control ">
                            </div>
                            <div class="form-group mb-3">
                                <label>Email
                                </label>
                                <input disabled type="text" value="{{ $nhaphanphoi->Email }}" class="form-control ">
                            </div>
                            <div class="form-group mb-3">
                                <label>SDT
                                </label>
                                <input disabled type="text" value="{{ $nhaphanphoi->SDT }}" class="form-control ">
                            </div>
                            {{-- <div class="row">
                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label for="">Ngày nhập
                                    </label>
                                    @if ($loaisp->created_at == null)
                                        <input id="" name="" type="text" value="Null" disabled
                                            class="form-control validate hasDatepicker" data-large-mode="true">
                                    @else
                                        <input id="" name="" type="text" value="{{ $loaisp->created_at }}" disabled
                                            class="form-control validate hasDatepicker" data-large-mode="true">
                                    @endif
                                </div>

                            </div> --}}
                        </form>
                    </div>
                    {{-- <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">

                        <img src="../storage/{{ $loaisp->HinhAnh }}" class="mx-auto d-block"
                            style="width: 300px;max-height:300px;object-fit:contain">

                    </div> --}}
                </div>
            </div>
        </div>
    </div>
@endsection
