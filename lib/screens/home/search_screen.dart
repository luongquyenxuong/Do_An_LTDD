//import 'package:app_thoi_trang/screens/wdg/wdg_product_type.dart';
import 'package:flutter/material.dart';

//import '../wdg/wdg_product.dart';
import 'show_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  // ignore: unnecessary_this, no_logic_in_create_state
  _SeachState createState() => _SeachState();
}

class _SeachState extends State<SearchScreen> {
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
        Icons.all_inbox,
      ),
      SizedBox(width: 5),
      Text(
        "Áo thun",
      )
    ]),
    Row(children: const [
      Icon(
        Icons.local_shipping,
      ),
      SizedBox(width: 5),
      Text(
        "Áo khoác",
      )
    ]),
    Row(children: const [
      Icon(
        Icons.inbox,
      ),
      SizedBox(width: 5),
      Text(
        "Quần",
      )
    ]),
    Row(children: const [
      Icon(
        Icons.disabled_by_default,
      ),
      SizedBox(width: 5),
      Text(
        "Giày",
      )
    ]),
    Row(children: const [
      Icon(
        Icons.disabled_by_default,
      ),
      SizedBox(width: 5),
      Text(
        "Dép",
      )
    ]),
    Row(children: const [
      Icon(
        Icons.disabled_by_default,
      ),
      SizedBox(width: 5),
      Text(
        "Phụ kiện",
      )
    ]),
  ];

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
            body: const TabBarView(
              children: [
                AllProductView(),
                TypeProductView(id: 1),
                TypeProductView(id: 2),
                TypeProductView(id: 3),
                TypeProductView(id: 4),
                TypeProductView(id: 5),
                TypeProductView(id: 6),
              ],
            )),
      ),
    );
  }
}
