import 'package:json_annotation/json_annotation.dart';
part 'loai_san_pham.g.dart';

@JsonSerializable(explicitToJson: true)

class LoaiSanPham {
  int? iD;
  String? tenLoaiSP;
  String? hinhAnh;
  int? trangThai;

  LoaiSanPham({this.iD, this.tenLoaiSP, this.hinhAnh, this.trangThai});

  factory LoaiSanPham.fromJson(Map<String, dynamic> json) =>_$LoaiSanPhamFromJson(json);
  
  

  Map<String, dynamic> toJson() => _$LoaiSanPhamToJson(this);
    
}
