@extends('layout.app')
@section('content')

    {{-- <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Admin</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="{{ asset('vendors/mdi/css/materialdesignicons.min.css') }}">
        <link rel="stylesheet" href="{{ asset('vendors/css/vendor.bundle.base.css')}}">
        <!-- endinject -->
        <!-- Plugin css for this page -->
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <!-- endinject -->
        <!-- Layout styles -->
        <link rel="stylesheet" href="{{ asset('css/style.css') }}">
        <!-- End layout styles -->
        <link rel="shortcut icon" href="{{asset('images/favicon.ico')  }}">
    </head> --}}
    <h1>Sửa sản phẩm</h1>
<div class="card">
    <div class="card-body">

 <form method="POST" action="{{ route('sanpham.update', ['sanpham' => $sanpham]) }}"  enctype="multipart/form-data">
    @csrf
    @method('PATCH')
        <div class="form-group col-12">
            <label for="">Tên sản phẩm:</label>
            <input type="text" class="form-control" id="" placeholder="" name="tensp" value="{{ $sanpham->TenSp }}">

        </div>
        {{-- <div class="form-group col-12">
            <label for="">Giới tính:</label>
            <select class="form-control" id="" name="" style="background-image: none">
                <option value="">Nam</option>
                <option value="">Nữ</option>
                <option value="">Khác</option>
            </select>
        </div> --}}
        <div class="form-group col-12">
            <label for="">Loại sản phẩm:</label>
            <select class="form-control form-control-lg" id="" name="loaisp" style="background-image: none">
                {{-- <option value="">Chọn</option> --}}
                @foreach ($lstLoai as $loai)
                    <option value="{{ $loai->id }}" @if ($loai->id == $sanpham->loai_id) selected @endif>
                        {{ $loai->TenLoaiSP }}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group col-12">
            <label for="">Nhà phân phối:</label>
            <select class="form-control form-control-lg" id="" name="nhaphanphoi" style="background-image: none">
                {{-- <option value="">Chọn</option> --}}
                @foreach ($lstNPP as $npp)
                    <option value="{{ $npp->id }}" @if ($npp->id == $sanpham->IDNhaPhanPhoi) selected @endif>
                        {{ $npp->TenNhaPhanPhoi }}</option>
                @endforeach
            </select>
        </div>

        <div class="form-group col-12">
            <label for="">Giá:</label>
            <input type="text" class="form-control" id="" placeholder="" name="gia" value="{{ $sanpham->Gia }}">

        </div>
        <div class="form-group col-12">
            <label for="">Kích thước:</label>
            <input type="text" class="form-control" id="" placeholder="" name="kichthuoc" value="{{ $sanpham->KichThuoc }}">

        </div>
        <img style="width: 100px;max-height:100px;object-fit:contain" src="{{ $sanpham->HinhAnh }}">
        <div class="form-group  col-12">
            <label for="inputImage">File upload</label>
            <input type="file" id="inputImage" name="hinhanh" class="file-upload-default">
            <div class="input-group col-xs-12">
                <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
                <span class="input-group-append">
                    <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload</button>
                </span>
            </div>
        </div>
        <div class="form-group col-12">
            <label for="">Màu sắc:</label>
            <input type="text" class="form-control" id="" placeholder="" name="mausac" value="{{ $sanpham->MauSac }}">

        </div>
        <div class="form-group">
            <label for="">Mô tả</label>
            <textarea name="mota" class="form-control" rows="4"> {{ $sanpham->MoTa }}</textarea>
        </div>
        <div class="form-group">
            <label for="">Thông tin</label>
            <textarea class="form-control" name="thongtin" rows="4">{{ $sanpham->ThongTin }}</textarea>
        </div>
        <div class="form-group">
            <label for="">Số lượng</label>
            <input name="tonkho" class="form-control" placeholder="Số lượng" value="{{ $sanpham->TonKho }}">
        </div>

        <button type="submit" class="btn btn-primary btn-submit-input-form btn-them-phim">
            <strong>Tiến hành sửa</strong>
        </button>

    </form>
    </div>
</div>

    <script src="../../assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="../../assets/js/off-canvas.js"></script>
    <script src="../../assets/js/hoverable-collapse.js"></script>
    <script src="../../assets/js/misc.js"></script>
    <script src="../../assets/js/file-upload.js"></script>
@endsection
