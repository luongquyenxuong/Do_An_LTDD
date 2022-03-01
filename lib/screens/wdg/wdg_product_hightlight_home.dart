import 'package:app_thoi_trang/models/product.dart';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/home/produc_item.dart';
import 'package:flutter/material.dart';
import '../../network/network_request.dart';
//import 'package:provider/provider.dart';
//import '../../models/product.dart';
//import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class AllProductsHighlightHome extends StatefulWidget {
  final User user;
   AllProductsHighlightHome({Key? key,required this.user}) : super(key: key);

  @override
  // ignore: unnecessary_this, no_logic_in_create_state
  State<AllProductsHighlightHome> createState() => _AllProductsHighlightHomeState(this.user);
}

class _AllProductsHighlightHomeState extends State<AllProductsHighlightHome> {
  final User user;
  _AllProductsHighlightHomeState(this.user);
  // @override
  // void initState(){
  //   super.initState();
  //   fetchSanPham().then((dataformServer){
  //     setState(() {
  //       data=dataformServer;
  //     });
  //   } );
  // }

  @override
  Widget build(BuildContext context) {
    // final product = Provider.of<SanPham>(context);
    // final pdts = product.toJson();
    return Container(
       height: 225,
         decoration:const BoxDecoration(
                color:Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      width: 0.5,
                    color: Colors.grey,
                    )
                  )
                ),
      child:   FutureBuilder<List<Product>>(
        future: apiListSanphamNoiBat(1),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: snapshot.data?.length??0,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1),
                itemBuilder: (ctx, i) => PdtItem(
                  user: user,
                    id: snapshot.data?[i].iD??0,
                      size: snapshot.data?[i].kichThuoc??"",
                      ten: snapshot.data?[i].tenSp??"",
                      hinhAnh: snapshot.data?[i].hinhAnh??"",
                      gia: snapshot.data?[i].gia??0,
                      moTa: snapshot.data?[i].mota??"",
                      thongTin:snapshot.data?[i].thongTin??"",
                    ));
          }
          return Container();
        })
    );
  }
}

class SanPham {
}
