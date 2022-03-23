@extends('layout.app')
@section('content')
    <h1>Thêm nhà phân phối</h1>
    <div class="card">
        <div class="card-body">
            <form class="forms-sample" method="post" action="{{ route('nhaphanphoi.store') }}" enctype="multipart/form-data" >
                @csrf
                <div class="form-group">
                    <label for="">Tên nhà phân phối</label>
                    <input type="text" class="form-control" name="tennpp" placeholder="Tên nhà phân phối">
                </div>
                 <div class="form-group">
                    <label for="">Email</label>
                    <input type="text" class="form-control" name="emailnpp" placeholder="Tên nhà phân phối">
                </div>
                <div class="form-group">
                    <label for="">Số điện thoại</label>
                    <input type="text" class="form-control" name="sdtnpp" placeholder="Tên nhà phân phối">
                </div>

                <button type="submit" class="btn btn-gradient-primary me-2">Submit</button>

            </form>
        </div>
    </div>
@endsection
