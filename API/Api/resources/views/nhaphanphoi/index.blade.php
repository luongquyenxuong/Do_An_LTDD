@extends('layout.app')
@section('content')
    <h1>Danh sách nhà phân phối</h1>
    <div class="card ">
        <div
            class="
                  card-header
                  d-flex
                  justify-content-between
                  align-items-center
                ">
                <div class="col-8">
                    <a class="btn btn-primary btn-sm" href="{{ route('nhaphanphoi.create') }}"> <i
                            class="mdi mdi mdi-plus-circle menu-icon"></i>Thêm mới</a>
                    <a class="btn btn-secondary btn-sm" href="{{ route('nhaphanphoi.deleted') }}"><i
                            class="mdi mdi mdi-delete menu-icon"></i>Nhà phân phối đã xóa<a href=""></a></a><br>
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
                            href="{{ route('nhaphanphoi.index') }}" placeholder="Search">
                    </div>
                </div>
            </form>

        </div>
        <div class="card-body">
            <h4 class="card-title">Nhà phân phối</h4>
            </p>
            <table class="table text-center">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Tên nhà phân phối</th>


                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($lstNhaPhanPhoi as $npp)
                        <tr>
                            <td>{{ $npp->id }}</td>
                            <td>{{ $npp->TenNhaPhanPhoi }}</td>
                            <td>
                                <div class="btn-group btn-group-sm">
                                    <a href="{{ route('nhaphanphoi.show', $npp) }}">
                                        <button type="submit" class="btn btn-info btn-sm" data-toggle="tooltip"
                                            data-placement="top" title="Xem chi tiết">
                                            <i class="mdi mdi-eye"></i>
                                        </button>
                                    </a>
                                    <a href="{{ route('nhaphanphoi.edit', $npp) }}">
                                        <button type="submit" class="btn btn-warning btn-sm" data-toggle="tooltip"
                                            data-placement="top" title="Chỉnh sửa">
                                            <i class="mdi mdi-pencil-box"></i>
                                        </button>
                                    </a>
                                    <form action="{{ route('nhaphanphoi.destroy', $npp) }}" method="post">
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
    {{ $lstNhaPhanPhoi->links('pagination::bootstrap-4') }}
@endsection
