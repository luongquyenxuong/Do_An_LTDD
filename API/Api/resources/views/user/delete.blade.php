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
                            <a href="{{ route('user.index') }}" class="btn btn-primary"> Quay lại
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
                            href="{{ route('user.index') }}" placeholder="Search">

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
                        <th>email</th>
                        <th>password</th>
                        <th>Họ tên</th>
                        {{-- <th>Giới tính</th>
                          <th>Ngày sinh</th> --}}
                        <th>SĐT</th>
                        {{-- <th>Avatar</th> --}}
                        <th>Admin</th>
                        <th>Ngày xóa</th>
                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($lstUser as $u)
                        <tr>
                            <td>{{ $u->id }}</td>
                            <td>{{ $u->email }}</td>
                            <td>{{ $u->password }}</td>
                            <td>{{ $u->HoTen }}</td>
                            {{-- <td>{{$u->GioiTinh}}</td>
                          @if ($u->NgaySinh == null)
                          <td>Chưa có dữ liệu</td>
                          @else
                          <td>{{$u->NgaySinh}}</td>
                          @endif --}}
                            <td>{{ $u->SDT }}</td>
                            {{-- @if ($u->Avatar == null)
                          <td><img style="width: 100px;max-height:100px;object-fit:contain" src="/assets/images/faces/3177440.png"> </td>
                          @else
                          <td><img style="width: 100px;max-height:100px;object-fit:contain" src="/assets/images/faces/{{$u->Avatar}}"> </td>
                          @endif --}}
                            @if ($u->Admin == 1)
                                <td> <input type="checkbox" class="form-check-input" disabled checked></td>
                            @else
                                <td> <input type="checkbox" class="form-check-input" disabled></td>
                            @endif
                            <td>{{ $u->deleted_at }}</td>
                            <td>
                                <div class="btn-group btn-group-sm">
                                    {{-- <a href="{{ route('user.show', $u) }}">
                                        <button type="submit" class="btn btn-info btn-sm" data-toggle="tooltip"
                                            data-placement="top" title="Xem chi tiết">
                                            <i class="mdi mdi-eye"></i>
                                        </button>
                                    </a> --}}
                                    {{-- <a href="">
                                        <button type="submit" class="btn btn-warning btn-sm" data-toggle="tooltip"
                                            data-placement="top" title="Chỉnh sửa">
                                            <i class="mdi mdi-pencil-box"></i>
                                        </button>
                                    </a> --}}

                                        <div class="btn-group btn-group-sm">
                                            <a href="{{ route('user.restore',$u->id) }}">
                                                <button type="submit" class="btn btn-info btn-sm" data-toggle="tooltip"
                                                    data-placement="top" title="Khôi phục">
                                                    <i class="mdi mdi mdi-backup-restore"></i>
                                                </button>
                                            </a>

                                        </div>

                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    {{ $lstUser->links('pagination::bootstrap-4') }}
@endsection
