import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';

class Cart with ChangeNotifier{
  final String id;
  final String name;
  final String size;
  final int quantity;
  final String imgUrl;
  final int price;

  Cart (
      {required this.id,
      required this.name,
      required this.size,
      required this.quantity,
      required this.imgUrl,
      required this.price});
}
class Carts with ChangeNotifier{
  final List<Cart> _items=[
    Cart(
      id: '1',
      name: 'Áo Polo',
      size:'M',
      quantity: 1,
      imgUrl:
          'assets/img/product/Ao_1.png',
      price: 55,
     
     
    ),
    Cart(
      id: '2',
      name: 'Quần short',
      size:'M',
      quantity:2,
      imgUrl:
          'assets/img/product/Quan_1.png',
        
      price: 56,
      
    ),
    Cart(
      id: '3',
      name: 'Giày FORUM LOW',
       size:'M',
      quantity: 3,
      imgUrl:
          'assets/img/product/Giay_1.png',
      price: 95,
     
    ),
    Cart(
      id: '1',
      name: 'Áo Polo',
      size:'M',
      quantity: 1,
      imgUrl:
          'assets/img/product/Ao_1.png',
      price: 55,
     
     
    ),
    Cart(
      id: '2',
      name: 'Quần short',
      size:'M',
      quantity:2,
      imgUrl:
          'assets/img/product/Quan_1.png',
        
      price: 56,
      
    ),
    Cart(
      id: '3',
      name: 'Giày FORUM LOW',
       size:'M',
      quantity: 3,
      imgUrl:
          'assets/img/product/Giay_1.png',
      price: 95,
     
    ),
  ];
  List<Cart> get items {
    return [..._items];
  }
  Cart findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
  int  total() {
  return  _items.map<int>((m) => (m.price)*(m.quantity)).sum;

  }

}