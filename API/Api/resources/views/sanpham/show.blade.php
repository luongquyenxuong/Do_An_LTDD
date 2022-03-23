@extends('layout.app')
@section('content')
    <div class="card">
        <div class="card-body">
            <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                <div class="row">
                    <div class="col-12">
                        <h2 class="tm-block-title d-inline-block">Chi tiết sản phẩm</h2>
                    </div>
                </div>
                <div class="row tm-edit-product-row">
                    <div class="col-xl-6 col-lg-6 col-md-12">
                        <form class="tm-edit-product-form">
                            <div class="form-group mb-3">
                                <label for="">Tên sản phẩm
                                </label>
                                <input type="text" placeholder disabled value="{{ $sanpham->TenSp }}"
                                    class="form-control ">
                            </div>
                            <div class="form-group mb-3">
                                <label for="name">Loại sản phẩm
                                </label>
                                <input disabled type="text" value="{{ $sanpham->loaiSanPham->TenLoaiSP }}"
                                    class="form-control ">
                            </div>
                            <div class="form-group mb-3">
                                <label for="name">Nhà phân phối
                                </label>
                                <input disabled type="text" value="{{ $sanpham->nhaPhanPhoi->TenNhaPhanPhoi }}"
                                    class="form-control ">
                            </div>
                            <div class="form-group mb-3">
                                <label for="name">Giá
                                </label>
                                <input disabled type="text" value="{{ $sanpham->Gia }}" class="form-control ">
                            </div>
                            <div class="form-group mb-3">
                                <label for="name">Kích thước
                                </label>
                                <input disabled type="text" value="{{ $sanpham->KichThuoc }}" class="form-control ">
                            </div>
                            <div class="form-group mb-3">
                                <label for="name">Kích thước
                                </label>
                                <input disabled type="text" value="{{ $sanpham->MauSac }}" class="form-control ">
                            </div>
                            <div class="form-group mb-3">
                                <label for="name">Số lượng
                                </label>
                                <input disabled type="text" value="{{ $sanpham->TonKho }}" class="form-control ">
                            </div>

                            @if ($sanpham->NoiBat == 1)
                                <div class="form-check form-check-flat form-check-primary">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" disabled checked> Nổi bật<i
                                            class="input-helper"></i></label>
                                </div>
                            @else
                                <div class="form-check form-check-flat form-check-primary">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" disabled> Nổi bật<i
                                            class="input-helper"></i></label>
                                </div>
                            @endif

                            <div class="row">
                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label for="">Ngày nhập
                                    </label>
                                    @if ($sanpham->created_at == null)
                                        <input id="" name="" type="text" value="Null" disabled
                                            class="form-control validate hasDatepicker" data-large-mode="true">
                                    @else
                                        <input id="" name="" type="text" value="{{ $sanpham->created_at }}" disabled
                                            class="form-control validate hasDatepicker" data-large-mode="true">
                                    @endif

                                </div>


                            </div>
                        </form>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">

                        <img src="{{ $sanpham->HinhAnh }}" class="mx-auto d-block"
                            style="width: 300px;max-height:300px;object-fit:contain">


                        <div class="form-group mb-3">
                            <label for="description">Mô tả</label>
                            <textarea class="form-control validate tm-small" disabled
                                rows="3">{{ $sanpham->MoTa }}</textarea>
                        </div>
                        <div class="form-group mb-3">
                            <label for="description">Thông tin</label>
                            <textarea class="form-control validate tm-small" disabled
                                rows="5">{{ $sanpham->ThongTin }}</textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
