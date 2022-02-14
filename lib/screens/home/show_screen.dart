import 'package:app_thoi_trang/screens/wdg/wdg_product.dart';
import 'package:app_thoi_trang/screens/wdg/wdg_product_type.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

//import '../wdg/wdg_product.dart';

// ignore: must_be_immutable
class ShowScreen extends StatefulWidget {
   int idLoai;
  ShowScreen({Key? key, required this.idLoai}) : super(key: key);

  @override
  // ignore: unnecessary_this, no_logic_in_create_state
  _ShowState createState() => _ShowState(this.idLoai);
}

class _ShowState extends State<ShowScreen> with TickerProviderStateMixin {
  late int idLoai;
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
 
 // ignore: non_constant_identifier_names
 late int SelectedIndex=idLoai;
 late TabController controller;

@override
void initState(){
  super.initState();

  controller=TabController(length: listTab.length,vsync: this,initialIndex:  idLoai
  );
  controller.addListener(() {
    setState(() {
    SelectedIndex=controller.index;
  }); 
  // ignore: avoid_print
  print("Selected Index: " + controller.index.toString());});
   // controller.animateTo(2);
}
 
  _ShowState(this.idLoai);
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
          body:TabBarView(
                  children:const [
                   AllProductView(),
                  TypeProductView(id: 1),
                  TypeProductView(id: 2),
                  TypeProductView(id: 3),
                  TypeProductView(id: 4),
                  TypeProductView(id: 5),
                  TypeProductView(id: 6),

                  
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

class TypeProductView extends StatelessWidget {
  final int id;
  const TypeProductView({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 10),
         AllProductsType(idLoaiSp:id),
        const SizedBox(height: 50),
      ],
    );
  }
}

class AllProductView extends StatelessWidget {
  const AllProductView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: 10),
        AllProducts(),
        SizedBox(height: 50),
      ],
    );
  }
}

