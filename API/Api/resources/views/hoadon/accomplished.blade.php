@extends('layout.app')
@section('content')
    <h1>Danh sách hóa đơn</h1>
    <div class="card ">
        <div
            class="
                  card-header
                  d-flex
                  justify-content-between
                  align-items-center
                ">
            <form action="" style="margin-left: 85%;">
                <div class="card-tools" style="margin-left: auto">
                    <div class="input-group">
                        <input type="search" name="search" class="form-control float-right"
                            href="{{ route('hoadon.index') }}" placeholder="Search">

                    </div>
                </div>
            </form>

        </div>
        <div class="card-body">
            <h4 class="card-title">Hóa đơn</h4>
            </p>
            <table class="table text-center">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Khách hàng</th>
                        <th>Thành tiền</th>
                        <th>Ngày tạo</th>
                        <th>Ngày giào</th>
                        <th>Trạng thái</th>
                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($lstHoaDon as $hd)
                        <tr>
                            <td>{{ $hd->id }}</td>
                            <td>{{ $hd->user->HoTen }}</td>
                            <td>{{ $hd->ThanhTien }}</td>
                            <td>{{ $hd->created_at }}</td>
                            <td>{{ $hd->updated_at }}</td>
                            @if ($hd->TrangThai == 0)
                                <td>Chờ xác nhận</td>
                            @elseif($hd->TrangThai == 1)
                                <td>Đang giao</td>
                            @elseif($hd->TrangThai == 2)
                                <td>Hoàn thành</td>
                            @else
                                <td>Đã hủy</td>
                            @endif
                            <td>
                                <div class="btn-group btn-group-sm">
                                    <a href="{{ route('hoadon.show', $hd) }}">
                                        <button type="submit" class="btn btn-info btn-sm" data-toggle="tooltip"
                                            data-placement="top" title="Xem chi tiết">
                                            <i class="mdi mdi-eye"></i>
                                        </button>
                                    </a>

                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    {{ $lstHoaDon->links('pagination::bootstrap-4') }}
@endsection
