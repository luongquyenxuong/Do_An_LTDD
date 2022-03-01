import 'package:app_thoi_trang/models/cart.dart';
import 'package:app_thoi_trang/models/db_helper.dart';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/user/address_user_screen.dart';
//import 'package:app_thoi_trang/screens/wdg/wdg_cart.dart';
import 'package:provider/provider.dart';
import 'package:app_thoi_trang/models/address_user.dart';
import 'package:app_thoi_trang/network/network_request.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartScreen extends StatefulWidget {
  final User? user;
  CartScreen({Key? key, required this.user}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _CartScreenState createState() => _CartScreenState(user);
}

class _CartScreenState extends State<CartScreen> {
  final int ship = 2;
  final User? user;

  _CartScreenState(this.user);
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
             InkWell(
                      onTap: () {},
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
            const SizedBox(
              height: 10,
            ),
            // const CartItem(),
            Builder(builder: (context) {
              return FutureBuilder(
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
                                                onPressed: () {},
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
                                                onPressed: () {},
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
                                          onPressed: () {},
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
                          children: const [
                            Text('Giá tiền:'),
                            Spacer(),
                            Text('100 \$')
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Phí giao hàng:'),
                            const Spacer(),
                            Text('$ship\$')
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
                            Text((1000 + ship.toDouble()).toString() + '\$',
                                style: const TextStyle(
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
            );
          }),
        ));
  }
}
