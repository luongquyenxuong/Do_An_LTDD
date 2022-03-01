import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/wdg/wdg_product.dart';
import 'package:app_thoi_trang/screens/wdg/wdg_product_highlights.dart';
import 'package:app_thoi_trang/screens/wdg/wdg_product_type.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

//import '../wdg/wdg_product.dart';

// ignore: must_be_immutable
class ShowScreen extends StatefulWidget {
  int idLoai;
  final User user;
  int? dc;
  ShowScreen({Key? key, required this.idLoai, required this.user,this.dc})
      : super(key: key);

  @override
  // ignore: unnecessary_this, no_logic_in_create_state
  _ShowState createState() => _ShowState(this.idLoai, this.user,dc);
}

class _ShowState extends State<ShowScreen> with TickerProviderStateMixin {
  final User user;
  late int idLoai;
int? dc;
  List<Widget> listTab = [
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
        Icons.star,
      ),
      SizedBox(width: 5),
      Text(
        "Nổi bật",
      )
    ]),
    Row(children: const [
      // Icon(
      //   Icons.all_inbox,
      // ),
      ImageIcon(
        AssetImage("assets/img/icon/shirt.png"),
       // color: Color(0xFF3A5A98),
      ),
      SizedBox(width: 5),
      Text(
        "Áo thun",
      )
    ]),
    Row(children: const [
     
       ImageIcon(
        AssetImage("assets/img/icon/4639573.png"),
       // color: Color(0xFF3A5A98),
      ),
      
      SizedBox(width: 5),
      Text(
        "Áo khoác",
      )
    ]),
    Row(children: const [
      ImageIcon(
        AssetImage("assets/img/icon/5669434.png"),
       // color: Color(0xFF3A5A98),
      ),
      
      SizedBox(width: 5),
      Text(
        "Quần",
      )
    ]),
    Row(children: const [
    
     ImageIcon(
        AssetImage("assets/img/icon/919275.png"),
       // color: Color(0xFF3A5A98),
      ),
      SizedBox(width: 5),
      Text(
        "Giày",
      )
    ]),
    Row(children: const [
       ImageIcon(
        AssetImage("assets/img/icon/1030605.png"),
       // color: Color(0xFF3A5A98),
      ),
      
      SizedBox(width: 5),
      Text(
        "Dép",
      )
    ]),
    Row(children: const [
       ImageIcon(
        AssetImage("assets/img/icon/3612865.png"),
       // color: Color(0xFF3A5A98),
      ),
      
      SizedBox(width: 5),
      Text(
        "Phụ kiện",
      )
    ]),
  ];

  // ignore: non_constant_identifier_names
  late int SelectedIndex = idLoai;
  late TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(
        length: listTab.length, vsync: this, initialIndex: idLoai + 1);
    controller.addListener(() {
      setState(() {
        SelectedIndex = controller.index;
      });
      // ignore: avoid_print
      print("Selected Index: " + controller.index.toString());
    });
    // controller.animateTo(2);
  }

  _ShowState(this.idLoai, this.user,this.dc);
  @override
  Widget build(BuildContext context) {
    //int id=idLoai;

    //super.build(context);
    //double _height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xffD9D9D9),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: AppBar(
            //automaticallyImplyLeading: true,
            bottom: TabBar(
              //indicatorColor: Colors.white,
              //indicatorColor:const Color(0xff202d59),
              tabs: listTab,
              isScrollable: true,
              labelStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              unselectedLabelStyle:
                  const TextStyle(fontStyle: FontStyle.normal, fontSize: 14),
              labelColor: Colors.white,
              //  onTap: (index) {
              //    setState(() {
              //        idLoai=index;
              //    });

              //  },
              controller: controller,
              // unselectedLabelColor: Colors.grey[700],
            ),
            backgroundColor: const Color(0xff202d59),
            title: SizedBox(
              width: double.infinity,
              height: 40,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffC4C4C4),
                      border: Border.all(color: Colors.black, width: 0.3),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.clear,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            /* Clear the search field */
                          },
                        ),
                        hintText: 'Tìm kiếm...',
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
            //centerTitle: true,
            //iconTheme:const IconThemeData(color: Colors.red),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            AllProductView(
              user: user,
              dc: dc,
            ),
            AllProductHighlightView(
              id: 0,
              dc: dc,
              user: user,
            ),
            TypeProductView(
              dc: dc,
              id: 1,
              user: user,
            ),
            TypeProductView(
              id: 2,
              dc: dc,
              user: user,
            ),
            TypeProductView(
              id: 3,
              dc: dc,
              user: user,
            ),
            TypeProductView(
              id: 4,
              dc: dc,
              user: user,
            ),
            TypeProductView(
              id: 5,
              dc: dc,
              user: user,
            ),
            TypeProductView(
              id: 6,
              dc: dc,
              user: user,
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  // bool get wantKeepAlive =>  true;
}

// ignore: must_be_immutable
class TypeProductView extends StatelessWidget {
  final int id;
  final User user;
  int? dc;
   TypeProductView({Key? key, required this.id, required this.user,this.dc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 10),
        AllProductsType(
          idLoaiSp: id,
          user: user,
          dc:dc,
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}

// ignore: must_be_immutable
class AllProductView extends StatelessWidget {
  int? dc;
  final User user;
   AllProductView({Key? key, required this.user,this.dc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 10),
        AllProducts(user: user,dc: dc,),
        const SizedBox(height: 50),
      ],
    );
  }
}

// ignore: must_be_immutable
class AllProductHighlightView extends StatelessWidget {
  final int id;
  final User user;
  int? dc;
   AllProductHighlightView(
      {Key? key, required this.id, required this.user,this.dc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 10),
        AllProductsHighlight(user: user,dc: dc,),
        const SizedBox(height: 50),
      ],
    );
  }
}
