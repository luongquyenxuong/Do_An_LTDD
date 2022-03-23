@extends('layout.app')
@section('content')


    <h1>Sửa loại sản phẩm</h1>
<div class="card">
    <div class="card-body">

 <form method="POST" action="{{ route('loaisanpham.update', ['loaisanpham' => $loaisp]) }}"  enctype="multipart/form-data">
    @csrf
    @method('PATCH')
        <div class="form-group col-12">
            <label for="">Tên loại sản phẩm:</label>
            <input type="text" class="form-control" id="" placeholder="" name="tenloaisp" value="{{ $loaisp->TenLoaiSP }}">

        </div>


        <img style="width: 100px;max-height:100px;object-fit:contain" src="../../storage/{{ $loaisp->HinhAnh }}">
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
