@extends('layout.app')
@section('content')


    <h1>Thêm sản phẩm</h1>
    <div class="card">
        <div class="card-body">
            <form class="forms-sample" method="post" action="{{ route('sanpham.store') }}" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label for="exampleInputName1">Tên sản phẩm</label>
                    <input name="TenSp" type="text" class="form-control" placeholder="Tên sản phẩm">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Loại sản phẩm</label>
                    <select name="loaisp" class="form-control form-control-lg">
                        <option value=''>Chọn loại</option>
                        @foreach ($lstLoai as $loai)
                            <option value="{{ $loai->id }}">{{ $loai->TenLoaiSP }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Nhà phân phối</label>
                    <select name="nhaphanphoi" class="form-control form-control-lg">
                        <option value=''>Chọn nhà phân phối</option>
                        @foreach ($lstNPP as $npp)
                            <option value="{{ $npp->id }}">{{ $npp->TenNhaPhanPhoi }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail3">Giá</label>
                    <input name="gia" class="form-control" placeholder="Giá">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword4">Kích thước</label>
                    <input class="form-control" name="kichthuoc" placeholder="Kích thước">
                </div>
                <div class="form-group">
                    <label for="inputImage">File upload</label>
                    <input type="file" id="inputImage" name="hinhanh" class="file-upload-default">
                    <div class="input-group col-xs-12">
                        <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
                        <span class="input-group-append">
                            <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload</button>
                        </span>
                    </div>
                </div>

                <div class="form-group">
                    <label for="exampleInputPassword4">Màu sắc</label>
                    <input class="form-control" name="mausac" placeholder="Màu sắc">
                </div>

                <div class="form-group">
                    <label for="exampleTextarea1">Mô tả</label>
                    <textarea name="mota" class="form-control" rows="4"></textarea>
                </div>
                <div class="form-group">
                    <label for="exampleTextarea1">Thông tin</label>
                    <textarea class="form-control" name="thongtin" rows="4"></textarea>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail3">Số lượng</label>
                    <input name="soluong" class="form-control" placeholder="Số lượng">
                </div>
                <div class="form-check form-check-flat form-check-primary">
                    <label class="form-check-label">
                        <input name="noibat" value="1" type="checkbox" class="form-check-input"> Nổi bật</label>

                </div>
                <button type="submit" class="btn btn-gradient-primary me-2">Submit</button>
                <a href="{{ route('sanpham.index') }}" class="btn btn-secondary">Quay lại</a>

            </form>
        </div>
    </div>
    <script src="../../assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="../../assets/js/off-canvas.js"></script>
    <script src="../../assets/js/hoverable-collapse.js"></script>
    <script src="../../assets/js/misc.js"></script>
    <script src="{{ asset('assets/js/file-upload.js') }}"></script>

@endsection
