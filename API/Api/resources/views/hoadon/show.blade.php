@extends('layout.app')
@section('content')
    <h1>Chi tiết hóa đơn</h1>
    <div class="card ">
        {{-- <div
            class="
                  card-header
                  d-flex
                  justify-content-between
                  align-items-center
                ">
        </div> --}}
        <div class="card-body">
            {{-- <h4 class="card-title">Chi tiết hóa đơn</h4> --}}
            @foreach($hoadon->chitiethoadon as $hd)
            @if ($loop->first)
            <h5>Người nhận: {{ $hd->diaChi->Ten }}</h5>
            <h5>Địa chỉ: {{ $hd->diaChi->DiaChi }}</h5>
            @endif
             @endforeach
            </p>
            <table class="table text-center">
                <thead>
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Số lượng</th>
                        <th>Giá</th>
                        <th>Thành tiền</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($hoadon->chitiethoadon as $hd)
                        <tr>
                            <td>{{ $hd->sanPham->TenSp }}</td>
                            <td>{{ $hd->SoLuong }}</td>
                            <td>{{ $hd->Gia }}</td>
                            <td>{{ $hd->ThanhTien }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    {{-- {{ $lstHoaDon->links('pagination::bootstrap-4') }} --}}
@endsection
