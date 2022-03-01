import 'dart:convert';
//import 'dart:io';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/home/main_screen.dart';
import 'package:app_thoi_trang/screens/welcome/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import '../models/address_user.dart';
import '../models/banner.dart';
import '../models/loai_san_pham.dart';
import '../models/product.dart';
String uriBase = "http://localhost:8000/api/";

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

Future<Address?> apiDiaChiKH(int? id, int? idKH) async {
  var uri = uriBase + 'dia-chi/khach-hang/$id/$idKH';
  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      Address dcKH = Address.fromJson((jsonDecode(response.body)));
      return dcKH;
    }
  } catch (_) {}
}

Future<List<Address>?> apidsDiaChiKH(int idKH) async {
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
  if (email.isNotEmpty && password.isNotEmpty) {
    final response = await http.post(Uri.parse(uriBase + "login"),
        body: ({
          "email": email,
          "password": password,
          "SDT": email,
        }));

    if (response.statusCode == 200) {
      result = User.fromJson(json.decode(response.body));

      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Login Successfull')));
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen(
                    user: result,
                  )),
          (route) => false);
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Đăng nhập thất bai"),
                content:
                    const Text("Sai email hoặc mật khẩu"),
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