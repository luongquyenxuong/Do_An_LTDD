// ignore_for_file: unnecessary_const

//import 'package:app_thoi_trang/screens/wdg/wdg_oder.dart';
import 'package:flutter/material.dart';


class DonHangScreen extends StatefulWidget {
  const DonHangScreen({Key? key}) : super(key: key);

  @override
  _MyReview createState() => _MyReview();
}

class _MyReview extends State<DonHangScreen> {
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
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
           
        
            elevation: 2,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            //Tất cả
             ListView(
              children:const  [
                // Wgtdonmua(),
              ],
            ),
            //Đã giao
            ListView(
              children: const [
               // Wgtdonmua(),
              ],
            ),
            //Đang giao
            ListView(
              children:const  [
              //  Wgtdonmua(),
              ],
            ),
            //chờ xác nhận
            ListView(
              children:const  [
              //  Wgtdonmua(),
              ],
            ),
            //đã hủy
            ListView(
              children:const  [
               // Wgtdonmua(),
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
