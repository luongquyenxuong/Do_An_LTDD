// ignore_for_file: unnecessary_const

//import 'package:app_thoi_trang/screens/wdg/wdg_oder.dart';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/wdg/wdg_oder.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class DonHangScreen extends StatefulWidget {
  User user;
  int trangthai;
  DonHangScreen({Key? key,required this.user,required this.trangthai}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _MyReview createState() => _MyReview(user,trangthai);
}

class _MyReview extends State<DonHangScreen> {
  User user;
  int trangthai;
 
_MyReview(this.user,this.trangthai);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color(0xffD9D9D9),
        appBar: PreferredSize(
          preferredSize:const Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: const Color(0xff202d59),
            centerTitle: true,
            title: const Text(
              'Đơn Mua',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            bottom: createTabBar(),
            // leading: IconButton(
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     icon: const Icon(
            //       Icons.arrow_back_ios,
            //       color: Colors.white,
            //     )),
           
        
            elevation: 2,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            //Tất cả
             ListView(
              children:  [
                 Wgtdonmua(user: user,trangThai: trangthai,),
              ],
            ),
            //Đã giao
            ListView(
              children:  [
                Wgtdonmua(user: user,trangThai: 2,),
              ],
            ),
            //Đang giao
            ListView(
              children:  [
                Wgtdonmua(user: user,trangThai: 1,),
              ],
            ),
            //chờ xác nhận
            ListView(
              children:  [
                Wgtdonmua(user: user,trangThai: 0,),
              ],
            ),
            //đã hủy
            ListView(
              children:  [
                Wgtdonmua(user: user,trangThai: 3,),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TabBar createTabBar() {
    return TabBar(
      //indicatorColor: Colors.white,
      //indicatorColor:const Color(0xff202d59),
      tabs: [
        Row(children: const [
          Icon(
            Icons.widgets,
          ),
          SizedBox(width: 5),
          Text(
            "Tất cả",
          )
        ]),
        Row(children: const [
          Icon(
            Icons.all_inbox,
          ),
          SizedBox(width: 5),
          Text(
            "Đã giao",
          )
        ]),
        Row(children: const [
          Icon(
            Icons.local_shipping,
          ),
          SizedBox(width: 5),
          Text(
            "Đang giao hàng",
          )
        ]),
        Row(children: const [
          Icon(
            Icons.inbox,
          ),
          SizedBox(width: 5),
          Text(
            "Chờ xác nhận",
          )
        ]),
        Row(children: const [
          Icon(
            Icons.disabled_by_default,
          ),
          SizedBox(width: 5),
          Text(
            "Đã hủy",
          )
        ]),
      ],
      isScrollable: true,
      labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      unselectedLabelStyle:
          const TextStyle(fontStyle: FontStyle.normal, fontSize: 14),
      labelColor: Colors.white,
      // unselectedLabelColor: Colors.grey[700],
    );
  }
}
