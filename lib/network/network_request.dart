import 'dart:convert';
//import 'dart:io';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/home/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import '../models/address_user.dart';
import '../models/loai_san_pham.dart';
import '../models/product.dart';

String uriBase = "http://127.0.0.1:8000/api/";

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

Future<User> login(String email, String password, context) async {
  User result = User(
    id: 0,
    email: "",
    password: "",
    hoTen: "",
    sDT: "",
    gioiTinh: 0,
    avatar: "",
    admin: 2,
  );
  if (email.isNotEmpty && password.isNotEmpty) {
    final response = await http.post(Uri.parse(uriBase + "login"),
        body: ({
          "email": email,
          "password": password,
        }));

    if (response.statusCode == 200) {
      result = User.fromJson(json.decode(response.body));

      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Login Successfull')));
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
          (route) => false);
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Đăng nhập thất bai"),
                content:
                    const Text("Vui lòng nhập lại tài khoản hoặc mật khẩu"),
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
