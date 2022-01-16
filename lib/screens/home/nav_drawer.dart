import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

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
                title:const Text('Shop'),
                onTap: () => {},
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
                title:const Text('Áo thun'),
                onTap: () => {Navigator.of(context).pop()},
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
                title:const Text('Áo khoác'),
                onTap: () => {Navigator.of(context).pop()},
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
                title:const Text('Quần'),
                onTap: () => {Navigator.of(context).pop()},
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
                title:const Text('Giày'),
                onTap: () => {Navigator.of(context).pop()},
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
                title:const Text('Dép'),
                onTap: () => {Navigator.of(context).pop()},
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
                title:const Text('Phụ kiện'),
                onTap: () => {Navigator.of(context).pop()},
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
                leading: Image.asset(
                  'assets/img/icon/user(2).png',
                  width: 30,
                  height: 30,
                ),
                title:const Text('Kiệt'),
                onTap: () => {Navigator.pushNamed(context, '/taikhoan')},
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
                onTap: () => {Navigator.pushNamed(context, '/donmua')},
              ),
            ),
            Container(
              color: Colors.white,
              foregroundDecoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 0.5)),
              ),
              child: ListTile(
                leading:const Icon(
                  Icons.room,
                  size: 30.0,
                  color: Colors.red,
                  // width: 30,
                  // height: 30,
                ),
                title:const Text('Địa chỉ'),
                onTap: () => {Navigator.pushNamed(context, '/diachi')},
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
                  'assets/img/icon/checkout.png',
                  width: 30,
                  height: 30,
                ),
                title: const Text('Thanh toán'),
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
