import 'package:app_thoi_trang/models/banner.dart';
import 'package:app_thoi_trang/models/user.dart';
//import 'package:app_thoi_trang/models/product.dart';
import 'package:app_thoi_trang/network/network_request.dart';
import 'package:app_thoi_trang/screens/cart/cart_screen.dart';
import 'package:app_thoi_trang/screens/cart/order_screen.dart';
import 'package:app_thoi_trang/screens/home/search_screen.dart';
import 'package:app_thoi_trang/screens/home/show_screen.dart';
import 'package:app_thoi_trang/screens/user/address_user_screen.dart';
import 'package:app_thoi_trang/screens/user/user_screen.dart';

import 'package:app_thoi_trang/screens/wdg/cart_provider.dart';

//import 'package:app_thoi_trang/screens/wdg/wdg_product.dart';
//import 'package:app_thoi_trang/screens/wdg/wdg_product_highlights.dart';
import 'package:app_thoi_trang/screens/wdg/wdg_product_hightlight_home.dart';
import 'package:app_thoi_trang/screens/wdg/wdg_product_home.dart';
import 'package:app_thoi_trang/screens/wdg/wdg_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:provider/provider.dart';
//import 'nav_drawer.dart';
import 'package:badges/badges.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  final User user;

  int? dc;
  HomeScreen({Key? key, required this.user, this.dc}) : super(key: key);

  @override
  // ignore: unnecessary_this, no_logic_in_create_state
  _HomeState createState() => _HomeState(this.user, this.dc);
}

class _HomeState extends State<HomeScreen> {
  final User user;
  int? dc;
  int? iddc;
  refresh(_dc){
    setState(() {
      dc=_dc;
      print("dc:$dc");
    });
    
  }
  _HomeState(this.user, this.dc);
  @override
  Widget build(BuildContext context) {
  
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffD9D9D9),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: const Color(0xffD9D9D9)),
        child: 
        // NavDrawer(
        //   user: user,
        //   dc: dc!,
        // ),
        Drawer(
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
                                user: user,
                                dc: dc,
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
                                user: user,
                                dc: dc,
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
                                user: user,
                                dc: dc,
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
                                user: user,
                                idLoai: 4,
                                dc: dc,
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
                                user: user,
                                dc: dc,
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
                                user: user,
                                dc: dc,
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
                    'assets/img/icon/${user.avatar ?? "3177440.png"}',
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
                    user.id = result;
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
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DonHangScreen(
                                user: user,
                                trangthai: 4,
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
                leading: const Icon(
                  Icons.room,
                  size: 30.0,
                  color: Colors.red,
                  // width: 30,
                  // height: 30,
                ),
                title: const Text('Địa chỉ'),
                onTap: () async {
                  final result= await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddressUserScreen(
                                user: user,
                                check: false,
                                dc: dc,
                              )));
                        setState(() {
                          dc=result;
                          print("dcnav: $dc");
                        });
                 
                },
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
    )
      ),
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Image.asset('assets/img/icon/homepage(1).png',
              height: 35, width: 35, color: Colors.white),
          const SizedBox(
            width: 5,
          ),
          const Text(
            "Trang chủ",
            style: TextStyle(color: Colors.white),
          ),
        ]),
        centerTitle: true,
        backgroundColor: const Color(0xff202d59),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SearchScreen(user: user, dc: dc)));
            },
          ),
          Badge(
            position: BadgePosition.topEnd(top: 0, end: 3),
            badgeContent:
                Consumer<CartProvider>(builder: (context, value, child) {
              return Text(value.getCounter().toString(),
                  style: const TextStyle(color: Colors.white));
            }),
            //padding: EdgeInsets.only(left: 10),
            animationDuration: const Duration(milliseconds: 300),
            //animationType: BadgeAnimationType.slide,
            child: IconButton(
              icon:
                  const Icon(Icons.shopping_bag_outlined, color: Colors.white),
              onPressed: () async {
                final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CartScreen(
                              user: user,
                              dc: dc,
                            )));
              refresh(result);
              },
            ),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 350,
            child: FutureBuilder<List<banner>?>(
                future: apiBanner(),
                builder: (context, snapshot) {
                  return CarouselSlider.builder(
                      //key: _sliderKey,
                      enableAutoSlider: true,
                      unlimitedMode: true,
                      slideBuilder: (index) {
                        return Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/img/icon/' + snapshot.data![index].anh!,
                            width: 500,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      slideTransform: const CubeTransform(),
                      slideIndicator: CircularSlideIndicator(
                          padding: const EdgeInsets.only(bottom: 5),
                          currentIndicatorColor: Colors.black,
                          indicatorBackgroundColor: Colors.white),
                      itemCount: snapshot.data?.length ?? 0);
                }),
          ),
          const SizedBox(height: 5),
          
          TypeProduct(
            user: user,
            dc: dc,
          ),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.only(top: 10.0, left: 5.0),
            width: 500,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Sản phẩm nổi bật ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShowScreen(
                                  user: user,
                                  idLoai: 0,
                                  dc: dc,
                                )));
                  },
                  child: Row(
                    children: [
                      Text(
                        'Tất cả',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey[600],
                        size: 16,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          AllProductsHighlightHome(
            dc: dc,
            user: user,
          ),
          //const AllProductsHighlight(),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(top: 10.0, left: 5.0),
            width: 500,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Sản phẩm',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ShowScreen(idLoai: -1, user: user, dc: dc)));
                  },
                  child: Row(
                    children: [
                      Text(
                        'Tất cả',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey[600],
                        size: 16,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          AllProductsHome(
            user: user,
            dc: dc,
          ),
          // const AllProducts(),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
