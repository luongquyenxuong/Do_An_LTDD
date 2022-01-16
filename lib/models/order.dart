import 'package:flutter/foundation.dart';

class Donmua with ChangeNotifier {
  final String id;
  final DateTime ngaytao;
  final String tensanpham;
  final int trangthai;
  final int soluong;
  final String hinhanh;
  final int gia;

  Donmua({
    required this.id,
    required this.ngaytao,
    required this.tensanpham,
    required this.trangthai,
    required this.soluong,
    required this.hinhanh,
    required this.gia,
  });
}

class DonmuaItems with ChangeNotifier {
  final List<Donmua> _items = [
    Donmua(
      id: '1',
      ngaytao: DateTime.now(),
      tensanpham: 'Áo polo',
      trangthai: 1,
      soluong: 2,
      hinhanh: 'assets/img/product/Ao_1.png',
      gia: 100,
    ),
    Donmua(
      id: '2',
      ngaytao: DateTime.now(),
      tensanpham: 'Áo polo 2',
      trangthai: 2,
      soluong: 3,
      hinhanh: 'assets/img/product/Quan_1.png',
      gia: 100,
    ),
    Donmua(
      id: '3',
      ngaytao: DateTime.now(),
      tensanpham: 'Áo polo 2',
      trangthai: 3,
      soluong: 3,
      hinhanh: 'assets/img/product/Giay_2.png',
      gia: 100,
    ),
    Donmua(
      id: '4',
      ngaytao: DateTime.now(),
      tensanpham: 'Áo polo 4',
      trangthai: 4,
      soluong: 2,
      hinhanh: 'assets/img/product/Ao_2.png',
      gia: 100,
    ),
  ];
  List<Donmua> get items {
    return [..._items];
  }

  Donmua findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}