@extends('layout.app')
@section('content')
<h1>Danh sách địa chỉ</h1>
<div class="card ">
  <div class="
                  card-header
                  d-flex
                  justify-content-between
                  align-items-center
                ">
              
              <form method="POST" style="margin-left: 85%;">
                <div class="card-tools" style="margin-left: auto">
                  <div class="input-group  mb-3">
                    <input type="text" class="form-control" placeholder="Search">
                   
                  </div>
                  {{-- <div class="input-group">
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                    <div class="input-group-append">
                     
                    </div>
                  </div> --}}
                </div>
              </form>

            </div>
                  <div class="card-body">
                    <h4 class="card-title">Địa chỉ</h4>
                    </p>
                    <table class="table text-center">
                      <thead>
                        <tr>
                          <th>id</th>
                          <th>Khách hàng</th>
                          <th>Tên người nhận</th>
                          <th>SĐT</th>
                          <th>Địa chỉ</th>
                          <th>Chức năng</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach($lstDiaChi as $dc)
                        <tr >
                          <td>{{$dc->id}}</td>
                          <td>{{$dc->user->HoTen }}</td>
                          <td>{{$dc->Ten }}</td>
                          <td>{{$dc->SDT}}</td>                  
                          <td>{{$dc->DiaChi }}</td>
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