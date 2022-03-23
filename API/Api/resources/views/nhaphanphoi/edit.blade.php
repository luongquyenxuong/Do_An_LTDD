@extends('layout.app')
@section('content')


    <h1>Sửa loại sản phẩm</h1>
<div class="card">
    <div class="card-body">
 <form method="POST" action="{{ route('nhaphanphoi.update', ['nhaphanphoi' => $nhaphanphoi]) }}"  enctype="multipart/form-data">
    @csrf
    @method('PATCH')
        <div class="form-group col-12">
            <label for="">Tên loại sản phẩm:</label>
            <input type="text" class="form-control" id="" placeholder="" name="tennpp" value="{{ $nhaphanphoi->TenNhaPhanPhoi }}">
        </div>
        <div class="form-group col-12">
            <label for="">Email:</label>
            <input type="text" class="form-control" id="" placeholder="" name="emailnpp" value="{{ $nhaphanphoi->Email }}">
        </div>
        <div class="form-group col-12">
            <label for="">Số điện thoại:</label>
            <input type="text" class="form-control" id="" placeholder="" name="sdtnpp" value="{{ $nhaphanphoi->SDT }}">
        </div>
        <button type="submit" class="btn btn-primary btn-submit-input-form btn-them-phim">
            <strong>Tiến hành sửa</strong>
        </button>

    </form>
    </div>
</div>
@endsection
