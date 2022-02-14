import 'package:app_thoi_trang/models/product.dart';
import 'package:app_thoi_trang/screens/home/produc_item.dart';
import 'package:flutter/material.dart';
import '../../network/network_request.dart';
//import 'package:provider/provider.dart';
//import '../../models/product.dart';
//import 'package:http/http.dart' as http;

class AllProducts extends StatefulWidget {
  const AllProducts({Key? key}) : super(key: key);

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
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
        future: apiListSanPham(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: snapshot.data?.length ?? 0,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (ctx, i) => PdtItem(
                      id: snapshot.data![i].iD!,
                      size: snapshot.data![i].kichThuoc!,
                      ten: snapshot.data![i].tenSp!,
                      hinhAnh: snapshot.data![i].hinhAnh!,
                      gia: snapshot.data![i].gia!,
                      moTa: snapshot.data![i].mota!,
                      thongTin:  snapshot.data![i].thongTin!,
                    ));
          }
          return Container();
        });
  }
}
