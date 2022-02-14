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
        <h2 class="mb-5">45,6334</h2>
        <h6 class="card-text">Decreased by 10%</h6>
      </div>
    </div>
  </div>
  <div class="col-md-4 stretch-card grid-margin">
    <div class="card bg-gradient-success card-img-holder text-white">
      <div class="card-body">
        <img src="assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image">
        <h2 class="mb-5">95,5741</h2>
        <h6 class="card-text">Increased by 5%</h6>
      </div>
    </div>
  </div>
</div>
@endsection