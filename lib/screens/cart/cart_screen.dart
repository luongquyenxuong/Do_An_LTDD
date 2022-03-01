import 'package:app_thoi_trang/models/cart.dart';
import 'package:app_thoi_trang/models/db_helper.dart';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/user/address_user_screen.dart';
import 'package:app_thoi_trang/screens/wdg/cart_provider.dart';
//import 'package:app_thoi_trang/screens/wdg/wdg_cart.dart';
import 'package:provider/provider.dart';
import 'package:app_thoi_trang/models/address_user.dart';
import 'package:app_thoi_trang/network/network_request.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartScreen extends StatefulWidget {
  final User? user;
  int? dc;
  CartScreen({Key? key, required this.user, this.dc}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _CartScreenState createState() => _CartScreenState(user, dc);
}

class _CartScreenState extends State<CartScreen> {
  final int ship = 2;
  final User? user;
  //late int idDC = user!.id!;
  int? dc;
  DBHelper? dbHelper = DBHelper();

  _CartScreenState(this.user, this.dc);
  // late int? iddc = dc;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

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
            FutureBuilder<Address?>(
              future: apiDiaChiKH(dc!, user!.id!),
              builder: (context, snapshot) {
                bool check;
                if (snapshot.hasData) {
                  if (snapshot.data?.id == null) {
                    check = false;
                  } else {
                    check = true;
                  }
                  return Visibility(
                    visible: check,
                    replacement: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressUserScreen(user: user!, check: check, dc: dc!)));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: Colors.white,
                        child: Row(
                          children: const <Widget>[
                            Text(
                              'Thêm địa chỉ mới',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            Spacer(),
                            Icon(
                              Icons.add,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(top: 15),
                      height: 130,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 1),
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
                                    Text(
                                      snapshot.data?.hoTen ?? "",
                                      style: const TextStyle(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      snapshot.data?.sDT ?? "",
                                      style: const TextStyle(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Text(snapshot.data?.diaChi ?? "",
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500)),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                            const Spacer(),
                            IconButton(
                              alignment: Alignment.topCenter,
                              padding: const EdgeInsets.only(top: 1),
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () async {
                                final result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AddressUserScreen(
                                              user: user!,
                                              check: true,
                                              dc: dc!,
                                            )));
                                setState(() {
                                  //idDC=result;
                                  dc = result;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
                return const Text('ko dữ liệu');
              },
            ),
            const SizedBox(
              height: 10,
            ),
            // const CartItem(),
            Builder(builder: (context) {
              final cart = Provider.of<CartProvider>(context);
              return FutureBuilder(
                  future: cart.getData(),
                  builder: (context, AsyncSnapshot<List<Cart>?> snapshot) {
                    if (snapshot.hasData) {
                      return ListView.separated(
                          physics: const ScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (BuildContext context, int index) =>
                              const SizedBox(
                                height: 10,
                              ),
                          itemCount: snapshot.data?.length ?? 0,
                          itemBuilder: (ctx, i) => Container(
                                //width: 300,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(children: [
                                  Image.asset(
                                    'assets/img/product/' +
                                        snapshot.data![i].hinhAnh!,
                                    width: 100,
                                    height: 100,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          snapshot.data![i].tenSp!,
                                          overflow: TextOverflow.ellipsis,
                                          //softWrap: false,
                                          maxLines: 1,
                                        ),
                                        Text(
                                            'Size: ' + snapshot.data![i].size!),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              width: 40,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                              child: IconButton(
                                                //alignment: Alignment.topCenter,
                                                padding: const EdgeInsets.only(
                                                    top: 1),
                                                onPressed: () {
                                                  int soluong = snapshot
                                                      .data![i].soluong!;
                                                  int price = snapshot
                                                      .data![i].giabandau!;
                                                  soluong--;
                                                  int? newGia = price * soluong;
                                                  if (soluong > 0) {
                                                    // int gia = initialprice;
                                                    dbHelper!
                                                        .updateQuantity(Cart(
                                                            id: snapshot
                                                                .data![i].id!,
                                                            idSp: snapshot
                                                                .data![i].idSp,
                                                            tenSp: snapshot
                                                                .data![i].tenSp,
                                                            gia: newGia,
                                                            giabandau: snapshot
                                                                .data![i]
                                                                .giabandau,
                                                            hinhAnh: snapshot
                                                                .data![i]
                                                                .hinhAnh,
                                                            soluong: soluong,
                                                            size: snapshot
                                                                .data![i].size))
                                                        .then((value) {
                                                      soluong = 0;
                                                      newGia = 0;
                                                      cart.removeTotalPrice(
                                                          double.parse(snapshot
                                                              .data![i]
                                                              .giabandau!
                                                              .toString()));
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
                                            Text('${snapshot.data![i].soluong}',
                                                style: const TextStyle(
                                                    fontSize: 20.0)),
                                            // Text('',
                                            //     style: const TextStyle(
                                            //         fontSize: 20.0)),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 40,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                              child: IconButton(
                                                padding: const EdgeInsets.only(
                                                    top: 1),
                                                onPressed: () {
                                                  int soluong = snapshot
                                                      .data![i].soluong!;
                                                  //int gia = initialprice;
                                                  int price = snapshot
                                                      .data![i].giabandau!;
                                                  soluong++;
                                                  int? newGia = soluong * price;
                                                  dbHelper!
                                                      .updateQuantity(Cart(
                                                          id: snapshot
                                                              .data![i].id!,
                                                          idSp: snapshot
                                                              .data![i].idSp!,
                                                          tenSp: snapshot
                                                              .data![i].tenSp!,
                                                          gia: newGia,
                                                          giabandau: snapshot
                                                              .data![i]
                                                              .giabandau!,
                                                          hinhAnh: snapshot
                                                              .data![i]
                                                              .hinhAnh!,
                                                          soluong: soluong,
                                                          size: snapshot
                                                              .data![i].size!))
                                                      .then((value) {
                                                    // tien()=>newGia;
                                                    soluong = 0;
                                                    newGia = 0;
                                                    cart.addTotalPrice(
                                                        double.parse(snapshot
                                                            .data![i].giabandau!
                                                            .toString()));
                                                  }).onError(
                                                          (error, stackTrace) {
                                                    // ignore: avoid_print
                                                    print(error.toString());
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            dbHelper!
                                                .delete(snapshot.data![i].id!);
                                            cart.removeCounter();
                                            cart.removeTotalPrice(double.parse(
                                                snapshot.data![i].gia!
                                                    .toString()));
                                          },
                                          icon: const Icon(
                                            Icons.delete,
                                            color: Colors.black,
                                          )),
                                      Text(
                                          snapshot.data![i].gia.toString() +
                                              "\$",
                                          style: const TextStyle(
                                              color: Color(0xff3515FA))),
                                    ],
                                  ),
                                ]),
                              ));
                    }
                    return Container();
                  });
            }),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  //Navigator.pushNamed(context, '/manhinhchinh');
                  Navigator.pop(context);
                },
                child: const Text('Tiếp tục mua sắm',
                    style: TextStyle(color: Colors.red)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Builder(builder: (context) {
            final prcart = Provider.of<CartProvider>(context);
            var total = prcart.getTotalPrice();
            final cart = prcart.getData();
            bool ischeck=true;
            if(total==0){ischeck=false;}
            return Container(
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
                            Visibility(
                              visible: ischeck,
                              child: Text('$total \$'))
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Phí giao hàng:'),
                            const Spacer(),
                            Visibility(
                              visible:ischeck ,
                              child: Text('$ship\$'))
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Thành tiền :',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.red),
                            ),
                            const Spacer(),
                            Visibility(
                              visible: ischeck,
                              child: Text((total + ship.toDouble()).toString() + '\$',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.red)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        if (total == 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Chưa có sản phẩm')));
                        } else {
                        prcart.resetCounter();
                         prcart.resetTotalPrice();
                          checkout(
                              user!.id!,
                              int.parse((total.toInt() + ship).toString()),
                              0,
                              dc!,
                              context);
                              ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Đặt hàng thành công')));
                        }
                        //dbHelper?.deleteAllCart();
                        
                              
                      },
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
            );
          }),
        ));
  }
}
