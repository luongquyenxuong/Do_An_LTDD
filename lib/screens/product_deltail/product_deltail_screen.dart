// ignore_for_file: unnecessary_this

import 'package:app_thoi_trang/models/cart.dart';
import 'package:app_thoi_trang/models/db_helper.dart';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/cart/cart_screen.dart';
import 'package:app_thoi_trang/screens/wdg/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ProductDetailScreen extends StatefulWidget {
  int? id;
  String? ten;
  String? size;
  int? gia;
  String? hinhAnh;
  String? moTa;
  String? thongTin;
  final User user;
  int? dc;
  ProductDetailScreen(
      {Key? key,
      required this.user,
      this.dc,
      this.id,
      this.ten,
      this.gia,
      this.size,
      this.hinhAnh,
      this.moTa,
      this.thongTin})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _ProductDetailScreenState createState() => _ProductDetailScreenState(
        this.user,
        this.size,
        this.id,
        this.ten,
        this.gia,
        this.hinhAnh,
        this.moTa,
        this.thongTin, this.dc,
      );
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int soluong = 1;
  int? id;
  final User user;
  String? size;
  String? ten;
  int? gia;
  int? dc;
  String? hinhAnh;
  String? moTa;
  String? thongTin;
  DBHelper? dbHelper = DBHelper();
  _ProductDetailScreenState(this.user, this.size, this.id, this.ten, this.gia,
      this.hinhAnh, this.moTa, this.thongTin,this.dc);
  void add() {
    setState(() {
      soluong++;
    });
  }

  void minus() {
    setState(() {
      if (soluong != 1) {
        soluong--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Thông tin sản phẩm'),
          centerTitle: true,
          backgroundColor: const Color(0xff202d59),
          iconTheme: const IconThemeData(color: Colors.white),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/img/product/$hinhAnh',
            height: 300,
            width: 100,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              ten!,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Giá: $gia \$',
              style: const TextStyle(
                  fontSize: 15, color: Colors.red, fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Số lượng: ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                width: 40,
                height: 20,
                decoration: BoxDecoration(
                    color: const Color(0xffE5E5E5),
                    borderRadius: BorderRadius.circular(12)),
                child: IconButton(
                  //alignment: Alignment.topCenter,
                  padding: const EdgeInsets.only(top: 1),
                  onPressed: minus,
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text('$soluong', style: const TextStyle(fontSize: 20.0)),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 40,
                height: 20,
                decoration: BoxDecoration(
                    color: const Color(0xffE5E5E5),
                    borderRadius: BorderRadius.circular(12)),
                child: IconButton(
                  padding: const EdgeInsets.only(top: 0.1),
                  onPressed: add,
                  icon: const Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Ưu đãi dành cho bạn:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/img/icon/buy.png',
                        height: 40,
                        width: 40,
                      ),
                      const Text('Mua trước trả sau')
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/img/icon/3901488.png',
                        height: 40,
                        width: 40,
                      ),
                      const Text('Miễn phí giao hàng')
                    ],
                  ),
                ]),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Mô tả sản phẩm:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              moTa ?? "",
              style: const TextStyle(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Thông tin sản phẩm:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              thongTin ?? "",
              style: const TextStyle(),
            ),
          ),
          // InkWell(
          //   onTap: () {},
          //   child: Row(children: [
          //     const Padding(
          //       padding: EdgeInsets.all(8.0),
          //       child: Text(
          //         'Đánh giá sản phẩm',
          //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          //       ),
          //     ),
          //     const Text('(Có 10 đánh giá)'),
          //     const Spacer(),
          //     Text(
          //       'Xem tất cả',
          //       style: TextStyle(
          //           color: Colors.orange[800], fontWeight: FontWeight.w700),
          //     ),
          //     Icon(Icons.keyboard_arrow_right,
          //         size: 30, color: Colors.orange[800]),
          //   ]),
          // ),
          const SizedBox(
            height: 30,
          )
        ]),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 55,
            child: Row(
              children: [
                InkWell(
                  onTap: () async {
                    final sl = soluong;
                    final total = sl * gia!;
                    final check = await dbHelper!.isItem(id!);
                    if (check == true) {
                      dbHelper!.updateQuantityItem(id!,sl);
                      cart.addTotalPrice(double.parse(total.toString()));
                    } else {
                      dbHelper!
                        .insert(Cart(
                        idSp: id,
                        tenSp: ten,
                        giabandau: gia,
                        gia: total,
                        hinhAnh: hinhAnh,
                        soluong: sl,
                        size: size,
                      ))
                          .then((value) {
                        //  print('da them ');
                        cart.addTotalPrice(double.parse(total.toString()));
                        cart.addCounter();
                      }).onError((error, stackTrace) {
                        // print(error.toString());
                      });
                    }
                  },
                  child: Container(
                    width: 200,
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.add_shopping_cart),
                        Text('Thêm vào giỏ hàng'),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    int? sl = soluong;
                    int? total = sl * gia!;
                    final check = await dbHelper!.isItem(id!);
                    if (check == true) {
                      dbHelper!.updateQuantityItem(id!,sl);
                      cart.addTotalPrice(double.parse(total.toString()));
                    } else {
                      dbHelper!
                        .insert(Cart(
                        idSp: id!,
                        tenSp: ten!,
                        giabandau: gia!,
                        gia: total,
                        hinhAnh: hinhAnh!,
                        soluong: sl,
                        size: size!,
                      ))
                          .then((value) {
                        // print('da them ');
                        cart.addTotalPrice(double.parse(total.toString()));
                        cart.addCounter();
                      }).onError((error, stackTrace) {
                        //  print(error.toString());
                      });
                    }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CartScreen(user: user,dc: dc,)));
                  },
                  child: Container(
                      width: 211.36,
                      color: Colors.red,
                      child: const Center(child: Text('Mua ngay'))),
                ),
              ],
            ),
          ),
        ));
  }
}
