// ignore_for_file: unnecessary_this

import 'package:app_thoi_trang/models/cart.dart';
import 'package:app_thoi_trang/models/db_helper.dart';
import 'package:app_thoi_trang/screens/wdg/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemsCart extends StatefulWidget {
  final int id;
  final int productID;
  final String name;
  final String size;
  final String imageUrl;
  final int quantity;
  final int price;
  final int initialprice;

  const ItemsCart(
      {Key? key,
      required this.id,
      required this.productID,
      required this.name,
      required this.size,
      required this.imageUrl,
      required this.quantity,
      required this.initialprice,
      required this.price})
      : super(key: key);

  @override

  // ignore: no_logic_in_create_state
  _ItemCartState createState() => _ItemCartState(this.id, this.productID,
      this.name, this.size, this.imageUrl, this.quantity, this.price,this.initialprice);
}

class _ItemCartState extends State<ItemsCart> {
  final int id;
  final int productID;
  final String name;
  final String size;
  final String imageUrl;
  final int initialprice;
  int quantity;
  final int price;
  DBHelper? dbHelper = DBHelper();
  _ItemCartState(this.id, this.productID, this.name, this.size, this.imageUrl,
      this.quantity, this.price,this.initialprice);

  //get _soluong => quantity;
  // void add() {
  //   setState(() {
  //     quantity++;
  //   });
  // }

  // void minus() {
  //   setState(() {
  //     if (quantity != 1) {
  //       quantity--;
  //     }
  //   });
  // }

  tien() =>quantity*initialprice;

  @override
  Widget build(BuildContext context) {
     final cart = Provider.of<CartProvider>(context);
    return Container(
      //width: 300,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(children: [
        Image.asset(
          'assets/img/product/' + imageUrl,
          width: 100,
          height: 100,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name, overflow: TextOverflow.ellipsis,
                //softWrap: false,
                maxLines: 1,
              ),
              Text('Size: ' + size),
              Row(
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12)),
                    child: IconButton(
                      //alignment: Alignment.topCenter,
                      padding: const EdgeInsets.only(top: 1),

                      onPressed: () {
                        if (quantity > 1) {
                          int soluong = quantity;
                         // int gia = initialprice;
                          quantity--;
                          int? newGia = soluong * initialprice;
                          dbHelper!
                              .updateQuantity(Cart(
                                  idSp: id,
                                  tenSp: name,
                                  gia: newGia,
                                  giabandau: initialprice,
                                  hinhAnh: imageUrl,
                                  soluong: soluong,
                                  size: size))
                              .then((value) {
                            //  tien()=>newGia;
                            cart.removeTotalPrice(
                                double.parse(initialprice.toString()));
                          });
                        }
                      },

                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('$quantity', style: const TextStyle(fontSize: 20.0)),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 40,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12)),
                    child: IconButton(
                      padding: const EdgeInsets.only(top: 1),

                      onPressed: () {
                        int soluong = quantity;
                        //int gia = initialprice;
                        quantity++;
                        int? newGia = soluong * initialprice;
                        
                        dbHelper!
                            .updateQuantity(Cart(
                                idSp: id,
                                tenSp: name,
                                gia: newGia,
                                giabandau: initialprice,
                                hinhAnh: imageUrl,
                                soluong: soluong,
                                size: size))
                            .then((value) {
                         // tien()=>newGia;
                          //soluong=0;
                          newGia=0;
                          cart.addTotalPrice(double.parse(initialprice.toString()));
                        });
                      },

                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 130,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                )),
            Text(tien().toString() + "\$",
                style: const TextStyle(color: Color(0xff3515FA))),
          ],
        ),
      ]),
    );
  }
}
