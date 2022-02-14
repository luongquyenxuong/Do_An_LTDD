@extends('layout.app')
@section('content')
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Purple Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../../assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../../assets/images/favicon.ico">
  </head>
<h1>Thêm sản phẩm</h1>
<div class="card">
    <div class="card-body">
      <form class="forms-sample">
        <div class="form-group">
          <label for="exampleInputName1">Tên sản phẩm</label>
          <input type="text" class="form-control" id="exampleInputName1" placeholder="Tên sản phẩm">
        </div>
        <div class="form-group">
          <label for="exampleFormControlSelect1">Loại sản phẩm</label>
          <select class="form-control form-control-lg" id="exampleFormControlSelect1">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
          </select>
        </div>
        <div class="form-group">
          <label for="exampleFormControlSelect1">Nhà phân phối</label>
          <select class="form-control form-control-lg" id="exampleFormControlSelect1">
            <option>1</option>
            <option>2</option>
            <option>3</option>
          </select>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail3">Giá</label>
          <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Giá">
        </div>
        <div class="form-group">
          <label for="exampleInputPassword4">Kích thước</label>
          <input type="password" class="form-control" id="exampleInputPassword4" placeholder="Kích thước">
        </div>
        <div class="form-group">
          <label>Hình ảnh</label>
          <input type="file" name="img[]" class="file-upload-default">
          <div class="input-group col-xs-12">
            <input type="text" class="form-control file-upload-info" disabled="" placeholder="Upload Image">
            <span class="input-group-append">
              <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload</button>
            </span>
          </div>
        </div>
        <div class="form-group">
          <label for="exampleInputPassword4">Màu sắc</label>
          <input type="password" class="form-control" id="exampleInputPassword4" placeholder="Màu sắc">
        </div>
      
        <div class="form-group">
          <label for="exampleTextarea1">Mô tả</label>
          <textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
        </div>
        <div class="form-group">
          <label for="exampleTextarea1">Thông tin</label>
          <textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail3">Số lượng</label>
          <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Số lượng">
        </div>
        <button type="submit" class="btn btn-gradient-primary me-2">Submit</button>
        <button class="btn btn-light">Cancel</button>
      </form>
    </div>
  </div>
@endsection
