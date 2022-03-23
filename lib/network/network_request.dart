// ignore_for_file: unnecessary_null_comparison

import 'dart:convert';
//import 'package:app_thoi_trang/models/Invoice.dart';
//import 'package:app_thoi_trang/models/Invoice_detail.dart';
//import 'package:app_thoi_trang/models/cart.dart';
//import 'package:app_thoi_trang/models/HoaDonTab.dart';
import 'package:app_thoi_trang/models/Invoice.dart';
//import 'package:app_thoi_trang/models/Invoice_detail.dart';
import 'package:app_thoi_trang/models/cthd.dart';
import 'package:app_thoi_trang/models/db_helper.dart';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/home/main_screen.dart';

import 'package:app_thoi_trang/screens/wdg/cart_provider.dart';

import 'package:app_thoi_trang/screens/welcome/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'dart:async';
import '../models/address_user.dart';
import '../models/banner.dart';
import '../models/loai_san_pham.dart';
import '../models/product.dart';

String uriBase = "http://10.0.2.2:8000/api/";

Future<List<Product>> apiListSanPham() async {
  var uri = uriBase + 'san-pham';
  List<Product> dsSanPham = [];
  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      List jsonRaw = jsonDecode(response.body);
      dsSanPham = jsonRaw.map((e) => Product.fromJson(e)).toList();
    }
  } catch (_) {}
  return dsSanPham;
}

Future<List<banner>> apiBanner() async {
  var uri = uriBase + 'banner';
  List<banner> dsBanner = [];
  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      List jsonRaw = jsonDecode(response.body);
      dsBanner = jsonRaw.map((e) => banner.fromJson(e)).toList();
    }
  } catch (_) {}
  return dsBanner;
}

Future<List<Product>> apiListLoaiSanpham(int idLoai) async {
  var uri = uriBase + 'sp-loai/$idLoai';
  List<Product> dsSanPhamLoai = [];
  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      List jsonRaw = jsonDecode(response.body);
      dsSanPhamLoai = jsonRaw.map((e) => Product.fromJson(e)).toList();
    }
  } catch (_) {}
  return dsSanPhamLoai;
}

Future<List<Product>> apiListSanphamNoiBat(int noibat) async {
  var uri = uriBase + 'san-pham/noi-bat/$noibat';
  List<Product> dsSanPhamNoiBat = [];
  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      List jsonRaw = jsonDecode(response.body);
      dsSanPhamNoiBat = jsonRaw.map((e) => Product.fromJson(e)).toList();
    }
  } catch (_) {}
  return dsSanPhamNoiBat;
}

Future<List<LoaiSanPham>> apiListLoai() async {
  var uri = uriBase + 'loai';
  List<LoaiSanPham> dsLoai = [];
  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      List jsonRaw = jsonDecode(response.body);
      dsLoai = jsonRaw.map((e) => LoaiSanPham.fromJson(e)).toList();
    }
  } catch (_) {}
  return dsLoai;
}

Future<Product?> apiSanPham(int id) async {
  var uri = uriBase + 'san-pham/$id';

  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      Product sp = Product.fromJson((jsonDecode(response.body)));
      return sp;
    }
  } catch (_) {}
}

Future<Address?> apiDiaChi(int id) async {
  var uri = uriBase + 'dia-chi/$id';
  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      Address dc = Address.fromJson((jsonDecode(response.body)));
      return dc;
    }
  } catch (_) {}
}

Future<bool> xoaDiaChi(int? id) async {
  var uri = uriBase + 'dia-chi/delete/$id';
  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      return true;
    }
  } catch (_) {}
  return false;
}

Future<Address?> apiDiaChiKH(int? id, int idKH) async {
  var uri = uriBase + 'dia-chi/khach-hang/id/$id/idKhachHang/$idKH';
  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      Address dc = Address.fromJson((jsonDecode(response.body)));
      return dc;
    }
  } catch (_) {}
}

Future<Address?> apiDiaChiDauKH(int idKH) async {
  var uri = uriBase + 'dia-chi-dau/khach-hang/$idKH';
  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      Address dc = Address.fromJson((jsonDecode(response.body)));
      return dc;
    }
  } catch (_) {}
}

Future<bool> insertDiaChi(int idKhachHang, String ten, String tenduong,
    String phuong, String quan, String thanhpho, String sdt, context) async {
  if (idKhachHang != null &&
      ten.isNotEmpty &&
      tenduong.isNotEmpty &&
      phuong.isNotEmpty &&
      quan.isNotEmpty &&
      thanhpho.isNotEmpty &&
      sdt.isNotEmpty) {
    final response = await http.post(Uri.parse(uriBase + "insertDiaChi"),
        body: ({
          "idkhachhang": idKhachHang.toString(),
          "sdt": sdt,
          "ten": ten,
          "diachi": tenduong + ',' + phuong + ',' + quan + ',' + thanhpho,
        }));
    if (response.statusCode == 200) {
      return true;
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("thêm địa chỉ thất bại"),
                // content:const Text("Vui lòng nhập đầy đủ thông tin"),
                actions: <Widget>[
                  TextButton(
                    child: const Text("Ok"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ));
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Vui lòng nhập đầy đủ thông tin")));
  }
  return false;
}

Future<bool> updateDiaChi(int id, int idKhachHang, String ten, String tenduong,
    String phuong, String quan, String thanhpho, String sdt, context) async {
  if (idKhachHang != null &&
      ten.isNotEmpty &&
      tenduong.isNotEmpty &&
      phuong.isNotEmpty &&
      quan.isNotEmpty &&
      thanhpho.isNotEmpty &&
      sdt.isNotEmpty) {
    final response = await http.post(Uri.parse(uriBase + "updateDiaChi"),
        body: ({
          "id": id.toString(),
          "idkhachhang": idKhachHang.toString(),
          "sdt": sdt,
          "ten": ten,
          "diachi": tenduong + ',' + phuong + ',' + quan + ',' + thanhpho,
        }));
    if (response.statusCode == 200) {
      return true;
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Lưu địa chỉ thất bại"),
                // content:const Text("Vui lòng nhập đầy đủ thông tin"),
                actions: <Widget>[
                  TextButton(
                    child: const Text("Ok"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ));
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Vui lòng nhập đầy đủ thông tin")));
  }
  return false;
}

Future<List<Address>?> apidsDiaChiKH(int? idKH) async {
  var uri = uriBase + 'dia-chi/ds-khach-hang/$idKH';
  List<Address> dsDCKH = [];
  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      List jsonRaw = jsonDecode(response.body);
      dsDCKH = jsonRaw.map((e) => Address.fromJson(e)).toList();
    }
  } catch (_) {}
  return dsDCKH;
}

Future<User> login(String email, String password, context) async {
  User result = User(
    id: 0,
    email: "",
    password: "",
    hoTen: "",
    sDT: "",
    gioiTinh: 0,
    avatar: "",
  );
  Address? dc;
  if (email.isNotEmpty && password.isNotEmpty) {
    final response = await http.post(Uri.parse(uriBase + "login"),
        body: ({
          "email": email,
          "password": password,
          "SDT": email,
        }));

    if (response.statusCode == 200) {
      result = User.fromJson(json.decode(response.body));
      var uriDC = uriBase + 'dia-chi-dau/khach-hang/${result.id}';
      final responseDC = await http.get(Uri.parse(uriDC));
      if (responseDC.statusCode == 200) {
        dc = Address.fromJson((jsonDecode(responseDC.body)));
      }
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Login Successfull')));
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen(
                    user: result,
                   // dc: dc?.id ?? 0,
                  )),
          (route) => false);
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Đăng nhập thất bai"),
                content: const Text("Sai email hoặc mật khẩu"),
                actions: <Widget>[
                  TextButton(
                    child: const Text("Ok"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ));
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Bạn phải nhập đầy đủ email và mật khẩu!")));
  }
  return result;
}

Future<User> register(String email, String password, String hoten, String phone,
    int sex, context) async {
  User result = User(
    id: 0,
    email: "",
    password: "",
    hoTen: "",
    sDT: "",
    gioiTinh: 0,
    avatar: "",
  );
  if (email.isNotEmpty &&
      password.isNotEmpty &&
      hoten.isNotEmpty &&
      phone.isNotEmpty) {
    final response = await http.post(Uri.parse(uriBase + "dangky"),
        body: ({
          "tkemail": email,
          "matkhau": password,
          "fullname": hoten,
          "sdt": phone,
          "sex": sex.toString()
        }));

    if (response.statusCode == 200) {
      //result=User.fromJson(json.decode(response.body));
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Đăng ký thành công')));
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const TrangDangNhap()),
          (route) => false);
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Đăng ký thất bại"),
                //content: const Text("Sai email hoặc mật khẩu"),
                actions: <Widget>[
                  TextButton(
                    child: const Text("Ok"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ));
    }
  }
  return result;
}

Future<User> updateUser(int id, String email, String password, String fullName,
    String phone, int sex, context) async {
  User result = User(
    id: 0,
    email: "",
    password: "",
    hoTen: "",
    sDT: "",
    gioiTinh: 0,
    avatar: "",
  );

  if (id != null &&
      email.isNotEmpty &&
      password.isNotEmpty &&
      fullName.isNotEmpty &&
      phone.isNotEmpty) {
    final response = await http.post(Uri.parse(uriBase + "update"),
        body: ({
          "email": email,
          "password": password,
          "fullname": fullName,
          "id": id.toString(),
          "sex": sex.toString(),
          "phone": phone
        }));
    if (response.statusCode == 200) {
      result = User.fromJson(json.decode(response.body));
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Lưu thông tin thành công')));
      Navigator.pop(context, result);
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Lưu thông tin thất bại"),
                // content:const Text("Vui lòng nhập đầy đủ thông tin"),
                actions: <Widget>[
                  TextButton(
                    child: const Text("Ok"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ));
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Vui lòng nhập đầy đủ thông tin")));
  }
  return result;
}

Future<User> updatePassword(int id, String password, context) async {
  User result = User(
    id: 0,
    email: "",
    password: "",
    hoTen: "",
    sDT: "",
    gioiTinh: 0,
    avatar: "",
  );
  if (id != null && password.isNotEmpty) {
    final response = await http.post(Uri.parse(uriBase + "updatepassword"),
        body: ({
          "password": password,
          "id": id.toString(),
        }));
    if (response.statusCode == 200) {
      User result = User.fromJson(json.decode(response.body));
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Thay đổi mật khẩu thành công')));
      Navigator.pop(context, result);
      //return true;
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Thay đổi mật khẩu thất bại"),
                // content:const Text("Vui lòng nhập đầy đủ thông tin"),
                actions: <Widget>[
                  TextButton(
                    child: const Text("Ok"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ));
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Vui lòng nhập đầy đủ thông tin")));
  }
  return result;
}

Future<bool> checkout(
    int idKH, int thanhtien, int trangthai, int? idDC, context) async {
  // Invoice result = Invoice(
  //   id: 0,
  //   iDKhachHang: 0,
  //   thanhTien: 0,
  //   trangThai: 0,
  //   createdAt: "",
  //   updatedAt: "",
  // );
  //Address? DC;
  if (idKH != null && thanhtien != null && trangthai != null && idDC != null) {
    final prcart = Provider.of<CartProvider>(context, listen: false);
    final cart = await prcart.getData();

    List<Map<String, dynamic>> cthd = [];
    for (var item in cart!) {
      cthd.add({
        "idsanpham": "${item.idSp}",
        "soluong": "${item.soluong}",
        "iddiachi": "$idDC",
        "gia": "${item.giabandau}",
      });
    }
    final body1 = json.encode({
      "idkhachhang": "$idKH",
      "thanhtien": "$thanhtien",
      "trangthai": "$trangthai",
      "data": cthd
    });
    final response = await http.post(Uri.parse(uriBase + "themhd"),
        body: body1,
        headers: {
          "accept": "application/json",
          "content-type": "application/json"
        });
    if (response.statusCode == 200) {
      DBHelper().deleteAllCart();
      Navigator.pop(context);
      return true;
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Đăng nhập thất bai"),
                content: const Text("Sai email hoặc mật khẩu"),
                actions: <Widget>[
                  TextButton(
                    child: const Text("Ok"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ));
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Bạn phải nhập đầy đủ email và mật khẩu!")));
  }
  return false;
}

Future<List<Invoice>> apiDanhSachHoaDon(int idKH, int trangthai) async {
  var uri = uriBase + 'hoa-don/KH/$idKH/$trangthai';
  List<Invoice> dsHoaDon = [];
  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      List jsonRaw = jsonDecode(response.body);
      dsHoaDon = jsonRaw.map((e) => Invoice.fromJson(e)).toList();
    }
  } catch (_) {}
  return dsHoaDon;
}

// Future<List<InvoiceDetail>> apiChiTietHoaDon(int idHD) async {
//   var uri = uriBase + 'cthd/hd/$idHD';
//   List<InvoiceDetail> dsCTHoaDon = [];
//   try {
//     final response = await http.get(Uri.parse(uri));
//     if (response.statusCode == 200) {
//       List jsonRaw = jsonDecode(response.body);
//       dsCTHoaDon = jsonRaw.map((e) => InvoiceDetail.fromJson(e)).toList();
//     }
//   } catch (_) {}
//   return dsCTHoaDon;
// }
Future<CTHD?> cthdfirst(int idHD) async {
  var uri = uriBase + 'cthdfirst?idhoadon=$idHD';

  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      // CTHD  cthd = CTHD.fromJson(json.decode(response.body));
      // return cthd;
      CTHD cthd = CTHD.fromJson((jsonDecode(response.body)));
      return cthd;
    }
  } catch (_) {}
  // return cthd;
}

Future<List<CTHD>> cthd(int idHD) async {
  var uri = uriBase + 'cthd1?idhoadon=$idHD';
  List<CTHD> cthd = [];
  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      List jsonRaw = jsonDecode(response.body);
      cthd = jsonRaw.map((e) => CTHD.fromJson(e)).toList();
    }
  } catch (_) {}
  return cthd;
}

Future<Invoice?> updateHD(int idHD, int trangthai, context) async {
  var uri = uriBase + 'updateTrangThai';
  Invoice invoice = Invoice(
    id: 0,
    iDKhachHang: 0,
    trangThai: 0,
    createdAt: "",
  );
  try {
    final response = await http.post(Uri.parse(uri),
        body: ({
          "trangthai": trangthai.toString(),
          "id": idHD.toString(),
        }));
    if (response.statusCode == 200) {
      invoice = Invoice.fromJson(jsonDecode(response.body));
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Hủy đơn hàng thành công')));

      Navigator.pop(context, invoice);
    }
  } catch (_) {}

  return invoice;
}
