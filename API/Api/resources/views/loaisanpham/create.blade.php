@extends('layout.app')
@section('content')

<h1>Thêm sản phẩm</h1>
<div class="card">
    <div class="card-body">
      <form class="forms-sample" method="post" action="{{ route('loaisanpham.store') }}" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
          <label for="">Tên loại sản phẩm</label>
          <input type="text" class="form-control" name="tenloaisp" placeholder="Tên loại sản phẩm">
        </div>
        <div class="form-group">
            <label for="inputImage">Hình minh họa</label>
            <input type="file" id="inputImage" name="hinhanh" class="file-upload-default">
            <div class="input-group col-xs-12">
                <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
                <span class="input-group-append">
                    <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload</button>
                </span>
            </div>
        </div>
        <button type="submit" class="btn btn-gradient-primary me-2">Submit</button>

      </form>
    </div>
  </div>
  <script src="../../assets/vendors/js/vendor.bundle.base.js"></script>
  <script src="../../assets/js/off-canvas.js"></script>
  <script src="../../assets/js/hoverable-collapse.js"></script>
  <script src="../../assets/js/misc.js"></script>
  <script src="{{ asset('assets/js/file-upload.js') }}"></script>
@endsection
