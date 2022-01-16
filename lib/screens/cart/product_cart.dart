// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

class ItemsCart extends StatefulWidget {
  final String name;
  final String size;
  final String imageUrl;
  final int quantity;
  final int price;
  const ItemsCart(
      {Key? key, required this.name, required this.size, required this.imageUrl, required this.quantity, required this.price})
      : super(key: key);

  @override
  
  // ignore: no_logic_in_create_state
  _ItemCartState createState() => _ItemCartState(
      this.name, this.size, this.imageUrl, this.quantity, this.price);
}

class _ItemCartState extends State<ItemsCart> {
  final String name;
  final String size;
  final String imageUrl;
  int quantity;
  final int price;

  _ItemCartState(
      this.name, this.size, this.imageUrl, this.quantity, this.price);

  get _soluong => quantity;

  void add() {
    setState(() {
      quantity++;
    });
  }

  void minus() {
    setState(() {
      if (quantity != 1) {
        quantity--;
      }
    });
  }

  int total() {
    return quantity * price;
  }

  @override
  Widget build(BuildContext context) {
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
          imageUrl,
          width: 100,
          height: 100,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
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
                    onPressed: minus,
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
                Text('$_soluong', style: const TextStyle(fontSize: 20.0)),
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
                    onPressed: add,
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
            Text(total().toString() + "\$",
                style: const TextStyle(color: Color(0xff3515FA))),
          ],
        ),
      ]),
    );
  }
}
