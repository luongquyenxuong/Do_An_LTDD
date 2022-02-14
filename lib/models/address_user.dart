import 'package:json_annotation/json_annotation.dart';
part 'address_user.g.dart';

@JsonSerializable(explicitToJson: true)


class Address {
  int? id;
  int? iDKhachHang;
  String? hoTen;
  String? sDT;
  String? diaChi;

  Address({this.id, this.iDKhachHang, this.hoTen, this.sDT, this.diaChi});

  factory Address.fromJson(Map<String, dynamic> json)=> _$AddressFromJson(json);

  Map<String, dynamic> toJson() =>_$AddressToJson(this);
   
}