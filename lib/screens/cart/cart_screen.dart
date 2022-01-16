//import 'dart:async';
//import 'package:app_thoi_trang/models/cart.dart';
//import 'package:provider/provider.dart';
import 'package:app_thoi_trang/models/cart.dart';
import 'package:flutter/material.dart';
import '../wdg/wdg_cart.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider/provider.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final int ship = 2;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    final prcart = Provider.of<Carts>(context);
    final pdcart = prcart.total();
    return Scaffold(
      backgroundColor: const Color(0xffD9D9D9),
      appBar: AppBar(
        title: const Text('Giỏ hàng', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xff202d59),
        centerTitle: true,
        // iconTheme: const IconThemeData(
        //   color: Colors.white,
        // ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
            height: 130,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.room,
                    color: Colors.red,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: 215,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Địa chỉ nhận hàng\n',
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900),
                          ),
                          const Text(
                            'Lương Quyền Xương',
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w500),
                          ),
                          const Text(
                            '123456789',
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w500),
                          ),
                          Flexible(
                            child: Column(
                              children: const [
                                Text('500 cách mạng tháng 8, quận 3,tp.HCM',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ],
                      )),
                  const Spacer(),
                  IconButton(
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.only(top: 1),
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
           const CartItem(),
         const SizedBox(height: 10,),
         Center(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/manhinhchinh');
              },
              child: const Text('Tiếp tục mua sắm',
                  style: TextStyle(color: Colors.red)),
            ),
          ),
          const SizedBox(height: 10,),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
            padding: const EdgeInsets.all(10),
            height: 110,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children:  [
                          const Text('Giá tiền:'),
                          const Spacer(),
                          Text('$pdcart\$')
                        ],
                      ),
                      Row(
                        children:  [
                          const Text('Phí giao hàng:'),
                          const Spacer(),
                          Text('$ship\$')
                        ],
                      ),
                      Row(
                        children:  [
                          const Text(
                            'Thành tiền :',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, color: Colors.red),
                          ),
                          const Spacer(),
                          Text((pdcart+ship).toString()+'\$',
                              style:const  TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.red)),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: _width,
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.red,
                      child: const Center(
                        child: Text('Đặt hàng',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
    ));
  }
}
