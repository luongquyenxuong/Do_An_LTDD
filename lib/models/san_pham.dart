
import 'package:json_annotation/json_annotation.dart';
part 'san_pham.g.dart';

@JsonSerializable(explicitToJson: true)

 class SanPham {
  int? iD;
  String? tenSp;
  int? iDLoaiSp;
  int? iDNhaPhanPhoi;
  int? gia;
  String? hinhAnh;
  String? kichThuoc;
  String? mauSac;
  String? mota;
  String? thongTin;
  int? tonkho;
  int? trangThai;

  SanPham(
      {this.iD,
      this.tenSp,
      this.iDLoaiSp,
      this.iDNhaPhanPhoi,
      this.gia,
      this.hinhAnh,
      this.kichThuoc,
      this.mauSac,
      this.mota,
      this.thongTin,
      this.tonkho,
      this.trangThai});

  factory SanPham.fromJson(Map<String, dynamic> json) => _$SanPhamFromJson(json);
   
  

  Map<String, dynamic> toJson() => _$SanPhamToJson(this);
   
  
}
