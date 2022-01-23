import 'package:app_thoi_trang/models/san_pham.dart';
import 'package:app_thoi_trang/network/network_request.dart';
import 'package:app_thoi_trang/screens/wdg/wdg_product.dart';
import 'package:app_thoi_trang/screens/wdg/wdg_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'nav_drawer.dart';





class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  

  @override
  Widget build(BuildContext context) {
    // final product = Provider.of<Products>(context);
    // final pdts = product.items;
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
       backgroundColor:const Color(0xffD9D9D9),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor:const Color(0xffD9D9D9)),
        child: const NavDrawer(),
      ),
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Image.asset(
            'assets/img/icon/homepage(1).png',
            height: 35,
            width: 35,
            color:Colors.white
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            "Trang chủ",
            style: TextStyle(color:Colors.white),
          ),
        ]),
        centerTitle: true,
        backgroundColor:const Color(0xff202d59),
        iconTheme: const IconThemeData(color:Colors.white),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
             color:Colors.white
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/timkiem');
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color:Colors.white
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/giohang');
              },
            ),
          ),
        ],
      ),
      body: ListView(
        
        children: <Widget>[
          SizedBox(
            height: 200,
            child: FutureBuilder<List<SanPham>>(
              future:apiListSanPham(),
               builder:
               (context, snapshot){
                 return CarouselSlider.builder(
                  //key: _sliderKey,
                  enableAutoSlider: true,
                  unlimitedMode: true,
                  slideBuilder: (index) {
                    return Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/img/product/'+snapshot.data![index].hinhAnh!,
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
                  itemCount: 
                  snapshot.data?.length??0
                  );
               }
            ),
          ),
          const SizedBox(height: 1.0),
         const TypeProduct(),
         const AllProducts(),
         const SizedBox(height: 50),
        ],
        
      ),
    );
  }
}
