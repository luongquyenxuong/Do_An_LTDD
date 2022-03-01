import 'package:app_thoi_trang/models/product.dart';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/home/produc_item.dart';
import 'package:flutter/material.dart';
import '../../network/network_request.dart';


// ignore: must_be_immutable
class AllProductsHighlight extends StatefulWidget {
  final User user;
   AllProductsHighlight({Key? key,required this.user}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<AllProductsHighlight> createState() => _AllProductsHighlightState(user);
}

class _AllProductsHighlightState extends State<AllProductsHighlight> {
    final User user;
    int? dc;
_AllProductsHighlightState(this.user);
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
    return FutureBuilder<List<Product>>(
        future: apiListSanphamNoiBat(1),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: snapshot.data?.length ?? 0,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (ctx, i) => PdtItem(
                      user: user,
                      id: snapshot.data?[i].iD,
                      size: snapshot.data?[i].kichThuoc,
                      ten: snapshot.data?[i].tenSp,
                      hinhAnh: snapshot.data?[i].hinhAnh,
                      gia: snapshot.data?[i].gia,
                      moTa: snapshot.data?[i].mota,
                      thongTin:snapshot.data?[i].thongTin,
                    ));
          }
          return Container();
        });
  }
}
