// ignore_for_file: unnecessary_this

import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/cart/order_screen.dart';
import 'package:app_thoi_trang/screens/user/address_user_screen.dart';
import 'package:app_thoi_trang/screens/user/user_screen.dart';
//import 'package:app_thoi_trang/screens/wdg/wdg_oder.dart';
import 'package:flutter/material.dart';

import 'show_screen.dart';

// ignore: must_be_immutable
class NavDrawer extends StatefulWidget {
  User? user;
  NavDrawer({Key? key, this.user}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<NavDrawer> createState() => _NavDrawerState(this.user);
}

class _NavDrawerState extends State<NavDrawer> {
  User? user;
  _NavDrawerState(this.user);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          //padding:EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black, width: 0.5)),
                  color: Colors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img/icon/KTX-logo.png'))),
              child: null,
            ),
            Container(
              color: Colors.white,
              foregroundDecoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colors.black, width: 0.5),
                    bottom: BorderSide(color: Colors.black, width: 0.5)),
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/img/icon/home.png',
                  width: 30,
                  height: 30,
                ),
                title: const Text('Shop'),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
            Container(
              foregroundDecoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 0.5)),
              ),
              color: Colors.white,
              child: ListTile(
                trailing: const Icon(Icons.arrow_forward_ios),
                title: const Text('Áo thun'),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShowScreen(
                                user: user!,
                                idLoai: 1,
                              )))
                },
              ),
            ),
            Container(
              foregroundDecoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 0.5)),
              ),
              color: Colors.white,
              child: ListTile(
                trailing: const Icon(Icons.arrow_forward_ios),
                title: const Text('Áo khoác'),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShowScreen(
                                user: user!,
                                idLoai: 2,
                              )))
                },
              ),
            ),
            Container(
              color: Colors.white,
              foregroundDecoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 0.5)),
              ),
              child: ListTile(
                trailing: const Icon(Icons.arrow_forward_ios),
                title: const Text('Quần'),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShowScreen(
                                user: user!,
                                idLoai: 3,
                              )))
                },
              ),
            ),
            Container(
              color: Colors.white,
              foregroundDecoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 0.5)),
              ),
              child: ListTile(
                trailing: const Icon(Icons.arrow_forward_ios),
                title: const Text('Giày'),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShowScreen(
                                user: user!,
                                idLoai: 4,
                              )))
                },
              ),
            ),
            Container(
              color: Colors.white,
              foregroundDecoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 0.5)),
              ),
              child: ListTile(
                trailing: const Icon(Icons.arrow_forward_ios),
                title: const Text('Dép'),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShowScreen(
                                user: user!,
                                idLoai: 5,
                              )))
                },
              ),
            ),
            Container(
              color: Colors.white,
              foregroundDecoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 0.5)),
              ),
              child: ListTile(
                trailing: const Icon(Icons.arrow_forward_ios),
                title: const Text('Phụ kiện'),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShowScreen(
                                user: user!,
                                idLoai: 6,
                              )))
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              foregroundDecoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colors.black, width: 0.5),
                    bottom: BorderSide(color: Colors.black, width: 0.5)),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/img/icon/${user?.avatar ?? "3177440.png"}',
                  ),
                  //radius: 10,
                ),
                onTap: () async {
                  final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserScreen(
                                user: user,
                              )));
                  setState(() {
                    user = result;
                  });
                },
                title: const Text("Tôi"),
              ),
            ),
            Container(
              color: Colors.white,
              foregroundDecoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 0.5)),
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/img/icon/3500833.png',
                  width: 30,
                  height: 30,
                ),
                title: const Text('Đơn mua'),
                onTap: () => {},
              ),
            ),
            Container(
              color: Colors.white,
              foregroundDecoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 0.5)),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.room,
                  size: 30.0,
                  color: Colors.red,
                  // width: 30,
                  // height: 30,
                ),
                title: const Text('Địa chỉ'),
                onTap: () => {},
              ),
            ),
            // Container(
            //   color: Colors.white,
            //   foregroundDecoration: const BoxDecoration(
            //     border:
            //         Border(bottom: BorderSide(color: Colors.black, width: 0.5)),
            //   ),
            //   child: ListTile(
            //     leading: Image.asset(
            //       'assets/img/icon/checkout.png',
            //       width: 30,
            //       height: 30,
            //     ),
            //     title: const Text('Thanh toán'),
            //     onTap: () => {},
            //   ),
            // ),
            Container(
              color: Colors.white,
              foregroundDecoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 0.5)),
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/img/icon/logout.png',
                  width: 30,
                  height: 30,
                ),
                title: const Text('Đăng xuất'),
                onTap: () =>
                    {Navigator.pushReplacementNamed(context, '/dangnhap')},
              ),
            ),
            const SizedBox(height: 20),
            const Align(
              child: Text(
                'Hotline : 123456789',
                style: TextStyle(
                    fontWeight: FontWeight.w900, backgroundColor: Colors.white),
              ),
            )
          ]),
    );
  }
}
