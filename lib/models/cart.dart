//import 'package:flutter/cupertino.dart';

class Cart {
  late final int? id;
  final int? idSp;
  final String? tenSp;
  final int? soluong;
  final int? gia;
  final int? giabandau;
  final String? hinhAnh;
  final String? size;

  Cart({this.id, this.idSp, this.tenSp, this.gia, this.hinhAnh, this.soluong,this.size,this.giabandau});

  Cart.fromMap(Map<dynamic, dynamic> res)
      : id = res['id'],
        idSp = res["productId"],
        giabandau=res["unitPrice"],
        tenSp = res["name"],
        gia = res["totalPrice"],
        hinhAnh = res["image"],
        soluong = res["quantity"],
        size = res["size"];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'productId': idSp,
      'name': tenSp,
      'unitPrice':giabandau,
      'totalPrice': gia,
      'image': hinhAnh,
      'quantity': soluong,
      'size':size,
    };
  }
}
