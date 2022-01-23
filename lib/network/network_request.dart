import 'dart:convert';
import 'package:app_thoi_trang/models/loai_san_pham.dart';
import 'package:app_thoi_trang/models/san_pham.dart';
import 'package:http/http.dart' as http;
import 'dart:async';


String uriBase="http://10.0.2.2:8000/api/";


Future<List<SanPham>> apiListSanPham() async{
    var uri = uriBase+'san-pham';
    List<SanPham> dsSanPham=[];
    try {
     final response=await http.get(Uri.parse(uri));
      if(response.statusCode==200){
        List jsonRaw =jsonDecode(response.body);
        dsSanPham =jsonRaw.map((e) => SanPham.fromJson(e)).toList();
      }
    } catch (_) {

    }
    return dsSanPham;
}
Future<List<SanPham>> apiListLoaiSanpham(int idLoai) async{
    var uri = uriBase+'sp-loai/$idLoai';
    List<SanPham> dsSanPhamLoai=[];
    try {
     final response=await http.get(Uri.parse(uri));
      if(response.statusCode==200){
        List jsonRaw =jsonDecode(response.body);
        dsSanPhamLoai =jsonRaw.map((e) => SanPham.fromJson(e)).toList();
      }
    } catch (_) {

    }
    return dsSanPhamLoai;
}

Future<List<LoaiSanPham>> apiListLoai() async{
    var uri = uriBase+'loai';
    List<LoaiSanPham> dsLoai=[];
    try {
     final response=await http.get(Uri.parse(uri));
      if(response.statusCode==200){
        List jsonRaw =jsonDecode(response.body);
        dsLoai =jsonRaw.map((e) => LoaiSanPham.fromJson(e)).toList();
      }
    } catch (_) {

    }
    return dsLoai;
}
Future<SanPham?> apiSanPham(int id) async{
    var uri = uriBase+'san-pham/$id';
    try {
     final response=await http.get(Uri.parse(uri));
      if(response.statusCode==200){
        SanPham 
        sp=SanPham.fromJson((jsonDecode(response.body)));
        return sp;

      }
    } catch (_) {
      
    }
   
}