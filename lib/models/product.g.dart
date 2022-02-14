// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      iD: json['id'] as int?,
      tenSp: json['TenSp'] as String?,
      iDLoaiSp: json['IDLoaiSp'] as int?,
      iDNhaPhanPhoi: json['IDNhaPhanPhoi'] as int?,
      gia: json['Gia'] as int?,
      hinhAnh: json['HinhAnh'] as String?,
      kichThuoc: json['KichThuoc'] as String?,
      mauSac: json['MauSac'] as String?,
      mota: json['Mota'] as String?,
      thongTin: json['ThongTin'] as String?,
      tonkho: json['Tonkho'] as int?,
      trangThai: json['TrangThai'] as int?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.iD,
      'TenSp': instance.tenSp,
      'IDLoaiSp': instance.iDLoaiSp,
      'IDNhaPhanPhoi': instance.iDNhaPhanPhoi,
      'Gia': instance.gia,
      'HinhAnh': instance.hinhAnh,
      'KichThuoc': instance.kichThuoc,
      'MauSac': instance.mauSac,
      'Mota': instance.mota,
      'ThongTin': instance.thongTin,
      'Tonkho': instance.tonkho,
      'TrangThai': instance.trangThai,
    };
