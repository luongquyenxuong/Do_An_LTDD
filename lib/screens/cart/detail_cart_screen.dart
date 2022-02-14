//import 'package:app_thoi_trang/models/cart_detail.dart';
//import 'package:app_thoi_trang/screens/wdg/wdg_detail_cart.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);
  final int ship1 = 2;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    //final prcart = Provider.of<CartDetails>(context);
    //final pdcart = prcart.total();
    return Scaffold(
        backgroundColor: const Color(0xffD9D9D9),
        appBar: AppBar(
          title: const Text('Thông tin đơn hàng'),
          backgroundColor: const Color(0xff202d59),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: ListView(
          children: [
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
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          ],
                        )),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              color: Colors.white,
              padding:const EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child:const Text(
                'Giao hàng thành công',
                style: TextStyle(color: Color(0xff0FAE62)),
              ),
            ),
            Container(
              height: 30,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(
                    color: Colors.black,
                    width: 0.5,
                  ))),
              padding:const EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child:const Text(
                'ID:',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 30,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.black,
                    width: 0.5,
                  ))),
              padding: const EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Danh sách sản phẩm:',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 10),
            // const CartItemDetail(),
            const SizedBox(height: 10),
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
                        children: [
                          const Text('Giá tiền:'),
                          const Spacer(),
                         // Text('$pdcart\$')
                        ],
                      ),
                      Row(
                        children: [
                          const Text('Phí giao hàng:'),
                          const Spacer(),
                          Text('$ship1\$')
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'Thành tiền :',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, color: Colors.red),
                          ),
                          const Spacer(),
                          // Text((pdcart + ship1).toString() + '\$',
                          //     style: const TextStyle(
                          //         fontWeight: FontWeight.w800,
                          //         color: Colors.red)),
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
                        child: Text('Mua lại',
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
