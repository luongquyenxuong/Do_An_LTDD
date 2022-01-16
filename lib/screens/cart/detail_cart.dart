// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

class ItemsDetailCart extends StatefulWidget {
  final String name;
  final String size;
  final String imageUrl;
  final int quantity;
  final int price;
  const ItemsDetailCart(
      {Key? key, required this.name, required this.size, required this.imageUrl, required this.quantity, required this.price})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _ItemsDetailCartState createState() => _ItemsDetailCartState(
      this.name, this.size, this.imageUrl, this.quantity, this.price);
}

class _ItemsDetailCartState extends State<ItemsDetailCart> {
  final String name;
  final String size;
  final String imageUrl;
  final int quantity;
  final int price;
  _ItemsDetailCartState(
      this.name, this.size, this.imageUrl, this.quantity, this.price);
   get _soluong => quantity;
   int total(){
    
      return quantity*price;
   
 }
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 300,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
      
        children: [
        Image.asset(
          imageUrl,
          width: 100,
          height: 100,
        ),
        Container(
          
          padding:const EdgeInsets.only(left: 10),
          width: 311,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
              ),
              Text('Size: ' + size),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 20),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('X ' + _soluong.toString()),
                    
                    Text(  total().toString(),style:const TextStyle(color:Color(0xff3515FA)),),
                  ],
                ),
              ),
            ],
          ),
        ),
        
         

      ]),
    );
  }
}
