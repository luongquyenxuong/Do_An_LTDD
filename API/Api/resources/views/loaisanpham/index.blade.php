@extends('layout.app')
@section('content')
<h1>Danh sách loại sản phẩm</h1>
<div class="card ">
  <div class="
                  card-header
                  d-flex
                  justify-content-between
                  align-items-center
                ">
                <button type="button" class="btn btn-primary btn-sm">
                  <i class="mdi mdi mdi-plus-circle menu-icon"></i>
                  <a href=""></a> Thêm mới</button><br>
              <form method="POST" style="margin-left: 70%;">
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
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                    <div class="input-group-append">
                     
                    </div>
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
                          <th>Hình ảnh</th>
                          {{-- <th>Trạng thái</th> --}}
                          <th>Chức năng</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach($lstLoaiSanPham as $l)
                        <tr >
                          <td>{{$l->id}}</td>
                          <td>{{$l->TenLoaiSP }}</td>
                          <td><img style="width: 100px;max-height:100px;object-fit:contain" src="./storage/img/product/{{$l->HinhAnh}}"> </td>
                          {{-- <td>{{$l->TrangThai }}</td> --}}
                        
                          <td> 
                            <div class="btn-group btn-group-sm">
                              <a href="">
                                <button type="submit" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="top" title="Xem chi tiết">
                                  <i class="mdi mdi-eye"></i>
                                </button>
                              </a>
                                <a href="">
                                  <button type="submit" class="btn btn-warning btn-sm" data-toggle="tooltip" data-placement="top" title="Chỉnh sửa">
                                    <i class="mdi mdi-pencil-box"></i>
                                  </button>
                                </a>
                                <a href="">
                                  <button class="btn btn-danger btn-sm" data-toggle="tooltip" type="button" title="Xóa">
                                    <i class="mdi mdi-delete"></i>
                                  </button></a>     
                              </div>
                        </td>                       
                        </tr>
                        @endforeach
                      </tbody>
                    </table>
                  </div>
                </div>
@endsection