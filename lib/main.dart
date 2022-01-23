//import 'package:app_thoi_trang/models/san_pham.dart';
import 'package:app_thoi_trang/screens/cart/order_screen.dart';
import 'package:app_thoi_trang/screens/user/add_address_screen.dart';

import 'package:provider/provider.dart';
import 'package:app_thoi_trang/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'models/cart_detail.dart';
import 'models/order.dart' ;
import 'screens/User/user_screen.dart';
import 'screens/cart/cart_screen.dart';
import 'screens/cart/detail_cart_screen.dart';
import 'screens/home/comment_screen.dart';
import 'screens/home/search_screen.dart';
//import 'screens/product_deltail/product_deltail_screen.dart';
import 'screens/user/address_user_screen.dart';
import 'screens/user/change_info_screen.dart';
import 'screens/user/change_pass_screen.dart';
import 'screens/welcome/dang_ky_page.dart';
import 'screens/welcome/dat_lai_mat_khau_screen.dart';
import 'screens/welcome/login_screen.dart';
import 'screens/home/main_screen.dart';
import 'models/cart.dart';
import 'screens/welcome/nhap_email_screen.dart';
import 'screens/welcome/quen_mat_khau_screen.dart';


void main() {
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        // ChangeNotifierProvider.value(
        //   value:SanPham(),
        // ),
        ChangeNotifierProvider.value(
          value:Carts(),
        ),
         ChangeNotifierProvider.value(
          value:CartDetails(),
        ),
        ChangeNotifierProvider.value(
          value:DonmuaItems(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Do an',
        theme: ThemeData(
          //primaryColor: kPrimaryColor,
          //scaffoldBackgroundColor: Colors.white,
        ),
        //home: Welcome(),
        initialRoute: '/',
        routes: {
          '/':(context) => const Welcome(),
          '/dangnhap':(context) =>const TrangDangNhap(),
          '/dangky':(context)=>const dangkyscreen(),
          '/taikhoan':(context) => const UserScreen(),
          '/manhinhchinh':(context)=>const HomeScreen(),
          '/thaydoidiachi':(context)=>const ChangeAddressScreen(),
          '/giohang':(context)=>const CartScreen(),
          '/quenmatkhau':(context)=>const ForgetScreen(),
          '/thaydoithongtin':(context)=>const changeinfoscreen(),
          '/diachi':(context)=>const addressuserscreen(),
          '/thaydoimatkhau':(context)=>const changepassscreen(),
          '/nhapemail':(context)=>const InputEmailScreen(),
          '/datlaimk':(context)=>const PasswordRessetScreen(),
          '/timkiem':(context)=>const SearchScreen(),
          '/chitietdonhang':(context)=>const Detail(),
          '/donmua':(context)=>const DonHangScreen(),
          '/danhgia':(context)=>const CommentScreen(),
          //'/chitietsanpham':(context)=>ProductDetailScreen(),
        },
        ),
    );
  }
}


