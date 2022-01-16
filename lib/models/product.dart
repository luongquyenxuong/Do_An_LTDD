import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  Product (
      {required this.id,
      required this.category,
      required this.name,
      required this.description,
      required this.imgUrl,
      required this.price});
}
class Products with ChangeNotifier{
  final List<Product> _items=[
    Product(
      id: '1',
      name: 'Áo Polo',
      imgUrl:
          'assets/img/product/Ao_PoLo1.png',
      price: 55,
      category: 'Business',
      description:
          'Trump: The Art of the Deal is a 1987 book credited to Donald J. Trump and journalist Tony Schwartz. Part memoir and part business-advice book, it was the first book credited to Trump, and helped to make him a "household name".',
    ),
    Product(
      id: '2',
      name: 'Quần short',
      imgUrl:
          'assets/img/product/quan_short.png',
        
      price: 56,
      category: 'Business',
      description:
          'Trump: The Art of the Deal is a 1987 book credited to Donald J. Trump and journalist Tony Schwartz. Part memoir and part business-advice book, it was the first book credited to Trump, and helped to make him a "household name".',
    ),
    Product(
      id: '3',
      name: 'Giày FORUM LOW',
      imgUrl:
          'assets/img/product/giay.png',
      price: 95,
      category: 'Business',
      description:
          'Trump: The Art of the Deal is a 1987 book credited to Donald J. Trump and journalist Tony Schwartz. Part memoir and part business-advice book, it was the first book credited to Trump, and helped to make him a "household name".',
    ),
    Product(
      id: '4',
      name: 'Áo JS_TEE',
      imgUrl:
          'assets/img/product/Ao_JS_TEE.png',
      price:35,
      category: 'Business',
      description:
          'Trump: The Art of the Deal is a 1987 book credited to Donald J. Trump and journalist Tony Schwartz. Part memoir and part business-advice book, it was the first book credited to Trump, and helped to make him a "household name".',
    ),
    Product(
      id: '5',
      name: 'Áo Polo',
      imgUrl:
          'assets/img/product/Ao_PoLo.png',
      price: 85,
      category: 'Business',
      description:
          'Trump: The Art of the Deal is a 1987 book credited to Donald J. Trump and journalist Tony Schwartz. Part memoir and part business-advice book, it was the first book credited to Trump, and helped to make him a "household name".',
    ),
    Product(
      id: '6',
      name: 'Quần short',
      imgUrl:
          'assets/img/product/quan_short.png',
      price: 75,
      category: 'Business',
      description:
          'Trump: The Art of the Deal is a 1987 book credited to Donald J. Trump and journalist Tony Schwartz. Part memoir and part business-advice book, it was the first book credited to Trump, and helped to make him a "household name".',
    ),
    Product(
      id: '7',
      name: 'Giày FORUM LOW',
      imgUrl:
          'assets/img/product/giay.png',
      price: 55,
      category: 'Business',
      description:
          'Trump: The Art of the Deal is a 1987 book credited to Donald J. Trump and journalist Tony Schwartz. Part memoir and part business-advice book, it was the first book credited to Trump, and helped to make him a "household name".',
    ),
    Product(
      id: '8',
      name: 'Áo JS_TEE',
      imgUrl:
          'assets/img/product/Ao_JS_TEE.png',
      price: 65,
      category: 'Business',
      description:
          'Trump: The Art of the Deal is a 1987 book credited to Donald J. Trump and journalist Tony Schwartz. Part memoir and part business-advice book, it was the first book credited to Trump, and helped to make him a "household name".',
    ),
  ];

List<Product> get items {
    return [..._items];
  }
Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
}
}