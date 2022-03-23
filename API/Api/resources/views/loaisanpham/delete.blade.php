@extends('layout.app')
@section('content')

<h1>Danh sách sản phẩm</h1>
    <div class="card ">
        <div
            class="
                  card-header
                  d-flex
                  justify-content-between
                  align-items-center
                ">
                <div class="col-8">
                    {{-- <a class="btn btn-primary btn-sm" href="{{ route('sanpham.create') }}"> <i
                        class="mdi mdi mdi-plus-circle menu-icon"></i>Thêm mới</a> --}}
                {{-- <a class="btn btn-secondary btn-sm" href="{{ route('sanpham.deleted') }}"><i
                            class="mdi mdi mdi-delete menu-icon"></i>Sản phẩm đã xóa<a href=""></a></a><br> --}}
                            <a href="{{ route('loaisanpham.index') }}" class="btn btn-primary"> Quay lại
                            </a>
                </div>

            <form action="" >
                <div class="card-tools" style="margin-left: auto">
                    {{-- <div class="input-group  mb-3">
                    <input type="text" class="form-control" placeholder="Search">
                    <div class="input-group-append">
                      <button type="submit" class="btn btn-success">
                        <i class="mdi mdi-magnify"></i>
                      </button>
                     </div>
                  </div> --}}
                    <div class="input-group">
                        <input type="search" name="search" class="form-control float-right"
                            href="{{ route('loaisanpham.index') }}" placeholder="Search">

                    </div>
                </div>
            </form>
        </div>
        <div class="card-body">
            <h4 class="card-title">Sản phẩm</h4>
            </p>

            <table class="table  text-center">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Tên sản phẩm</th>
                        <th>Ngày xóa</th>
                        <th>Hình ảnh</th>
                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($lstLoai as $loai)
                        <tr>
                            <td>{{ $loai->id }}</td>
                            <td>{{ $loai->TenLoaiSP }}</td>
                            <td>{{ $loai->deleted_at}}</td>
                            <td><img style="width: 100px;max-height:100px;object-fit:contain" src="{{ $loai->HinhAnh }}">
                            </td>
                            <td>
                                <div class="btn-group btn-group-sm">
                                    <a href="{{ route('loaisanpham.restore',$loai->id) }}">
                                        <button type="submit" class="btn btn-info btn-sm" data-toggle="tooltip"
                                            data-placement="top" title="Khôi phục">
                                            <i class="mdi mdi mdi-backup-restore"></i>
                                        </button>
                                    </a>

                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <div class=""></div>

        </div>
    </div>
    {{ $lstLoai->links('pagination::bootstrap-4') }}
@endsection
