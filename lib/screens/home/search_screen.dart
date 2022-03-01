//import 'package:app_thoi_trang/screens/wdg/wdg_product_type.dart';
import 'package:app_thoi_trang/models/user.dart';
import 'package:flutter/material.dart';

//import '../wdg/wdg_product.dart';
import 'show_screen.dart';

// ignore: must_be_immutable
class SearchScreen extends StatefulWidget {
  final User user;
  SearchScreen({Key? key, required this.user}) : super(key: key);

  @override
  // ignore: unnecessary_this, no_logic_in_create_state
  _SeachState createState() => _SeachState(user);
}

class _SeachState extends State<SearchScreen> {
  final User user;
  _SeachState(this.user);
  var searchController = TextEditingController();
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
  var items = <String>[];

  @override
  Widget build(BuildContext context) {
    //double _height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: DefaultTabController(
        length: listTab.length,
        child: Scaffold(
            backgroundColor: const Color(0xffD9D9D9),
            appBar: AppBar(
              automaticallyImplyLeading: false,
              bottom: TabBar(
                tabs: listTab,
                isScrollable: true,
                labelStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                unselectedLabelStyle:
                    const TextStyle(fontStyle: FontStyle.normal, fontSize: 14),
                labelColor: Colors.white,
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
                      controller: searchController,
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
                            onPressed: () {},
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
            body: TabBarView(
              children: [
                // AllProductView(),
                // AllProductHighlightView(id:0),
                // TypeProductView(id: 1),
                // TypeProductView(id: 2),
                // TypeProductView(id: 3),
                // TypeProductView(id: 4),
                // TypeProductView(id: 5),
                // TypeProductView(id: 6),
                AllProductView(
                  user: user,
                ),
                AllProductHighlightView(
                  id: 0,
                  user: user,
                ),
                TypeProductView(
                  id: 1,
                  user: user,
                ),
                TypeProductView(
                  id: 2,
                  user: user,
                ),
                TypeProductView(
                  id: 3,
                  user: user,
                ),
                TypeProductView(
                  id: 4,
                  user: user,
                ),
                TypeProductView(
                  id: 5,
                  user: user,
                ),
                TypeProductView(
                  id: 6,
                  user: user,
                ),
              ],
            )),
      ),
    );
  }
}
