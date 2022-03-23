@extends('layout.app')
@section('content')
    <div class="card mb-3">
        <div class="row no-gutters">
            <div class="col-md-4">
                @if ($user->Avatar == null)
                    <td><img style="width: 400px;max-height:400px;object-fit:contain"
                            src="/assets/images/faces/3177440.png"> </td><br>
                @else
                    <td><img style="width: 400px;max-height:400px;object-fit:contain"
                            src="/assets/images/faces/{{ $user->Avatar }}"></td><br>
                @endif
            </div>
            {{-- <div class="tm-block-col tm-col-avatar">
            <div class="tm-bg-primary-dark tm-block tm-block-avatar">
              <h2 class="tm-block-title">Ảnh đại diện</h2>
              <div class="tm-avatar-container">
              @if ($user->Avatar == null)
                        <td><img style="width: 100px;max-height:100px;object-fit:contain" src="/assets/images/faces/3177440.png"> </td><br>
                        @else
                        <td><img style="width: 100px;max-height:100px;object-fit:contain" src="/assets/images/faces/{{$user->Avatar}}"></td><br>
                        @endif
              </div>
            </div>
          </div> --}}
            <div class="col-md-8">
                <div class="card-body">
                    <div class="row tm-content-row">
                        <div class="tm-block-col tm-col-account-settings">
                            <div class="tm-bg-primary-dark tm-block tm-block-settings">
                                <h2 class="tm-block-title">Thông tin tài khoản</h2>
                                <form action="" class="tm-signup-form row">
                                    <div class="form-group col-lg-6">
                                        <label for="name">Tên</label>
                                        <input id="name" name="name" type="text" disabled value="{{ $user->HoTen }}"
                                            class="form-control validate">
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <label for="email">Email</label>
                                        <input id="email" name="email" type="email" disabled value="{{ $user->email }}"
                                            class="form-control validate">
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <label for="password">Mật khẩu</label>
                                        <input id="password" name="password" type="password" disabled
                                            value="{{ $user->password }}" class="form-control validate">
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <label for="password2">Số điện thoại</label>
                                        <input id="password2" name="password2" disabled value="{{ $user->SDT }}"
                                            class="form-control validate">
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <label for="phone">Ngày sinh</label>
                                        <input id="phone" name="phone" type="tel" disabled value="{{ $user->NgaySinh }}"
                                            class="form-control validate">
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <label for="phone">Giới tính</label>
                                        @if ($user->GioiTinh == 1)
                                            <input id="phone" name="phone" type="tel" disabled value="Nam"
                                                class="form-control validate">
                                        @else
                                            <input id="phone" name="phone" type="tel" disabled value="Nữ"
                                                class="form-control validate">
                                        @endif
                                    </div>
                                    <div class="form-group col-lg-6">
                                        @if ($user->Admin == 1)
                                            <div class="form-check form-check-flat form-check-primary">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" disabled checked>
                                                    Admin<i class="input-helper"></i></label>
                                            </div>
                                        @else
                                            <div class="form-check form-check-flat form-check-primary">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" disabled>Admin<i
                                                        class="input-helper"></i></label>
                                            </div>
                                        @endif
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endsection
