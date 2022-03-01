//import 'package:app_thoi_trang/models/product.dart';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/home/show_screen.dart';
//import 'package:app_thoi_trang/screens/wdg/wdg_product_type.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Typeprd extends StatelessWidget {
  final int id;
  final String name;
  final String imageUrl;
  final Size size;
  final User user;
  // ignore: prefer_const_constructors_in_immutables
  Typeprd(
      {Key? key,
      required this.id,
      required this.user,
      required this.name,
      required this.imageUrl,
      required this.size})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ShowScreen(
                      idLoai: id,
                      user: user,
                    )));
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 20.0,
          top: 20.0,
          bottom: 20.0,
        ),
        width: size.width * 0.4,
        height: 190,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(width: 1, color: const Color(0xff202d59))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 140,
                height: 139,
                margin: const EdgeInsets.all(5),
                child: Image.asset(
                  'assets/img/product/' + imageUrl,
                  //fit: BoxFit.fill,
                  width: 140,
                  height: 139,
                ),
              ),
              Text(name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
