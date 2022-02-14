
import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

@JsonSerializable(explicitToJson: true)

 class Product {
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

  Product(
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

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
   
  

  Map<String, dynamic> toJson() => _$ProductToJson(this);
   
  
}
