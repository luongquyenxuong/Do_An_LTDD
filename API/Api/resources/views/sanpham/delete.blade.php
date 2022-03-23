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
                            <a href="{{ route('sanpham.index') }}" class="btn btn-primary"> Quay lại
                            </a>
                </div>

            <form action="" style="margin-left: 70%;">
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
                            href="{{ route('sanpham.index') }}" placeholder="Search">

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
                        <th>Loại sản phẩm</th>
                        <th>Nhà phân phối</th>
                        <th>Giá</th>
                        <th>Ngày xóa</th>
                        <th>Hình ảnh</th>
                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($lstSanPham as $sp)
                        <tr>
                            <td>{{ $sp->id }}</td>
                            <td>{{ $sp->TenSp }}</td>
                            <td>{{ $sp->loaiSanPham->TenLoaiSP }}</td>
                            <td>{{ $sp->nhaPhanPhoi->TenNhaPhanPhoi }}</td>
                            <td>{{ $sp->Gia }}</td>
                            <td>{{ $sp->deleted_at}}</td>
                            <td><img style="width: 100px;max-height:100px;object-fit:contain" src="{{ $sp->HinhAnh }}">
                            </td>
                            <td>
                                <div class="btn-group btn-group-sm">
                                    <a href="{{ route('sanpham.restore',$sp->id) }}">
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
    {{ $lstSanPham->links('pagination::bootstrap-4') }}
@endsection
