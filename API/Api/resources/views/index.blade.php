@extends('layout.app')
@section('content')
<div class="row">
  <div class="col-md-4 stretch-card grid-margin">
    <div class="card bg-gradient-danger card-img-holder text-white">
      <div class="card-body">
        <img src="assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image">

        <h2 class="mb-5">{{ $product }}</h2>
        <h6 class="card-text">Sản phẩm</h6>
      </div>
    </div>
  </div>
  <div class="col-md-4 stretch-card grid-margin">
    <div class="card bg-gradient-info card-img-holder text-white">
      <div class="card-body">
        <img src="assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image">
        <h2 class="mb-5">{{ $invoice }}</h2>
        <h6 class="card-text">Hóa đơn</h6>
      </div>
    </div>
  </div>
  <div class="col-md-4 stretch-card grid-margin">
    <div class="card bg-gradient-success card-img-holder text-white">
      <div class="card-body">
        <img src="assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image">
        <h2 class="mb-5">{{ $account }}</h2>
        <h6 class="card-text">Người dùng</h6>
      </div>
    </div>
  </div>
  <div class="col-md-4 stretch-card grid-margin">
    <div class="card bg-gradient-dark card-img-holder text-white">
      <div class="card-body">
        <img src="assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image">
        <h2 class="mb-5">{{ $address }}</h2>
        <h6 class="card-text">Địa chỉ</h6>
      </div>
    </div>
  </div>
  <div class="col-md-4 stretch-card grid-margin">
    <div class="card bg-gradient-warning card-img-holder text-white">
      <div class="card-body">
        <img src="assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image">
        <h2 class="mb-5">{{ $category }}</h2>
        <h6 class="card-text">Loại sản phẩm</h6>
      </div>
    </div>
  </div>
  <div class="col-md-4 stretch-card grid-margin">
    <div class="card bg-gradient-primary card-img-holder text-white">
      <div class="card-body">
        <img src="assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image">
        <h2 class="mb-5">{{ $brand }}</h2>
        <h6 class="card-text">Nhà phân phối</h6>
      </div>
    </div>
  </div>
</div>
@endsection
