import 'dart:convert';
//import 'dart:html';
import 'package:app_thoi_trang/models/loai_san_pham.dart';
import 'package:app_thoi_trang/models/product.dart';
import 'package:app_thoi_trang/models/address_user.dart';
//import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:async';

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

