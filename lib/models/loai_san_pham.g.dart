// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loai_san_pham.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoaiSanPham _$LoaiSanPhamFromJson(Map<String, dynamic> json) => LoaiSanPham(
      iD: json['ID'] as int?,
      tenLoaiSP: json['TenLoaiSP'] as String?,
      hinhAnh: json['HinhAnh'] as String?,
      trangThai: json['TrangThai'] as int?,
    );

Map<String, dynamic> _$LoaiSanPhamToJson(LoaiSanPham instance) =>
    <String, dynamic>{
      'ID': instance.iD,
      'TenLoaiSP': instance.tenLoaiSP,
      'HinhAnh': instance.hinhAnh,
      'TrangThai': instance.trangThai,
    };
