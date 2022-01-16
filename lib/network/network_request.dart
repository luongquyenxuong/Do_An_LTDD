import 'dart:convert';
import 'package:app_thoi_trang/models/loai_san_pham.dart';
import 'package:app_thoi_trang/models/san_pham.dart';
import 'package:http/http.dart' as http;
import 'dart:async';


String uriBase="http://10.0.2.2:8000/api/";

// ignore: non_constant_identifier_names
Future<List<SanPham>> API_ds_SanPham() async{
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
// ignore: non_constant_identifier_names
Future<List<LoaiSanPham>> API_DS_Loai() async{
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
Future<SanPham?> apiSanPham() async{
    var uri = uriBase+'san-pham/9';
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