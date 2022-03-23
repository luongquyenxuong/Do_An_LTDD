@extends('layout.app')
@section('content')
    <h1>Danh sách loại sản phẩm</h1>
    <div class="card ">
        <div
            class="
                  card-header
                  d-flex
                  justify-content-between
                  align-items-center
                ">
            <div class="col-8">
                    <a class="btn btn-primary btn-sm" href="{{ route('loaisanpham.create') }}"> <i
                            class="mdi mdi mdi-plus-circle menu-icon"></i>Thêm mới</a>
                    <a class="btn btn-secondary btn-sm" href="{{ route('loaisanpham.deleted') }}"><i
                            class="mdi mdi mdi-delete menu-icon"></i>Loại sản phẩm đã xóa<a href=""></a></a><br>
                </div>

            <form action="">
                <div class="card-tools" style="margin-left: auto">
                    <div class="input-group">
                        <input type="search" name="search" class="form-control float-right"
                            href="{{ route('loaisanpham.index') }}" placeholder="Search">

                    </div>
                </div>
            </form>
        </div>
        <div class="card-body">
            <h4 class="card-title">Loại sản phẩm</h4>
            </p>
            <table class="table text-center">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Tên loại</th>
                        {{-- <th>Hình ảnh</th> --}}
                        {{-- <th>Trạng thái</th> --}}
                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($lstLoaiSanPham as $loai)
                        <tr>
                            <td>{{ $loai->id }}</td>
                            <td>{{ $loai->TenLoaiSP }}</td>
                            {{-- <td><img style="width: 100px;max-height:100px;object-fit:contain" src="./storage/img/product/{{$loai->HinhAnh}}"> </td> --}}
                            {{-- <td>{{$l->TrangThai }}</td> --}}
                            <td>
                                <div class="btn-group btn-group-sm">
                                    <a href="{{ route('loaisanpham.show', $loai->id) }}">
                                        <button type="submit" class="btn btn-info btn-sm" data-toggle="tooltip"
                                            data-placement="top" title="Xem chi tiết">
                                            <i class="mdi mdi-eye"></i>
                                        </button>
                                    </a>
                                    <a href="{{ route('loaisanpham.edit', $loai->id) }}">
                                        <button type="submit" class="btn btn-warning btn-sm" data-toggle="tooltip"
                                            data-placement="top" title="Chỉnh sửa">
                                            <i class="mdi mdi-pencil-box"></i>
                                        </button>
                                    </a>
                                    <form action="{{ route('loaisanpham.destroy', $loai->id) }}" method="post">
                                        @csrf
                                        @method('DELETE')
                                        <a>
                                            <button class="btn btn-danger btn-sm" data-toggle="tooltip" type="submit"
                                                title="Xóa">
                                                <i class="mdi mdi-delete"></i>
                                            </button></a>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    {{ $lstLoaiSanPham->links('pagination::bootstrap-4') }}
@endsection
