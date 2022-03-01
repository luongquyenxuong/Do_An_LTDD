// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      id: json['id'] as int?,
      iDKhachHang: json['IDKhachHang'] as int?,
      hoTen: json['Ten'] as String?,
      sDT: json['SDT'] as String?,
      diaChi: json['DiaChi'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'IDKhachHang': instance.iDKhachHang,
      'Ten': instance.hoTen,
      'SDT': instance.sDT,
      'DiaChi': instance.diaChi,
    };
