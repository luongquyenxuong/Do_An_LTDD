@extends('layout.app')
@section('content')
    <h1>Danh sách khách hàng</h1>
    <div class="card ">
        <div
            class="
                  card-header
                  d-flex
                  justify-content-between
                  align-items-center
                ">
                <div class="col-8">
                    <a class="btn btn-secondary btn-sm" href="{{ route('user.deleted') }}"><i
                            class="mdi mdi mdi-delete menu-icon"></i>Tài khoản đã xóa<a href=""></a></a><br>
                </div>
            {{-- <button type="button" class="btn btn-primary btn-sm">
                  <i class="mdi mdi mdi-plus-circle menu-icon"></i>
                  <a href=""></a> Thêm mới</button><br> --}}
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
                        <input type="search" name="search" href="{{ route('user.index') }}"
                            class="form-control float-right" placeholder="Search">
                    </div>
                </div>
            </form>

        </div>
        <div class="card-body">
            <h4 class="card-title">Người dùng</h4>
            </p>
            <table class="table text-center">
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
                            <td>
                                <div class="btn-group btn-group-sm">
                                    <a href="{{ route('user.show', $u) }}">
                                        <button type="submit" class="btn btn-info btn-sm" data-toggle="tooltip"
                                            data-placement="top" title="Xem chi tiết">
                                            <i class="mdi mdi-eye"></i>
                                        </button>
                                    </a>
                                    {{-- <a href="">
                                        <button type="submit" class="btn btn-warning btn-sm" data-toggle="tooltip"
                                            data-placement="top" title="Chỉnh sửa">
                                            <i class="mdi mdi-pencil-box"></i>
                                        </button>
                                    </a> --}}
                                    <form action="{{ route('user.destroy', $u) }}" method="post">
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
    {{ $lstUser->links('pagination::bootstrap-4') }}
@endsection
