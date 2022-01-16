import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';

class CartDetail with ChangeNotifier{
  final String id;
  final String name;
  final String size;
  final int quantity;
  final String imgUrl;
  final int price;

  CartDetail (
      {required this.id,
      required this.name,
      required this.size,
      required this.quantity,
      required this.imgUrl,
      required this.price});
}
class CartDetails with ChangeNotifier{
  final List<CartDetail> _items=[
    CartDetail(
      id: '1',
      name: 'Áo Polo',
      size:'M',
      quantity: 1,
      imgUrl:
          'assets/img/product/Ao_1.png',
      price: 55,
     
     
    ),
    CartDetail(
      id: '2',
      name: 'Quần short',
      size:'M',
      quantity:2,
      imgUrl:
          'assets/img/product/Quan_1.png',
        
      price: 56,
      
    ),
    CartDetail(
      id: '3',
      name: 'Giày FORUM LOW',
       size:'M',
      quantity: 3,
      imgUrl:
          'assets/img/product/Giay_1.png',
      price: 95,
     
    ),
    CartDetail(
      id: '4',
      name: 'Áo Polo',
      size:'M',
      quantity: 1,
      imgUrl:
          'assets/img/product/Ao_2.png',
      price: 55,
    ),
    
  ];
  List<CartDetail> get items {
    return [..._items];
  }
  CartDetail findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
   int  total() {
  return  _items.map<int>((e) => (e.price)*(e.quantity)).sum;
  }
  List<CartDetail> get itemsquantity1{
    return  [..._items.where((element) => element.quantity == 1)];
    
  }
}