import 'package:app_thoi_trang/models/product.dart';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/home/produc_item.dart';
import 'package:flutter/material.dart';
import '../../network/network_request.dart';
//import 'package:provider/provider.dart';
//import '../../models/product.dart';
//import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class AllProductsType extends StatefulWidget {
  final User user;
  final int idLoaiSp;
   AllProductsType({Key? key, required this.idLoaiSp,required this.user}) : super(key: key);

  @override
  // ignore: unnecessary_this, no_logic_in_create_state
  State<AllProductsType> createState() => _AllProductsTypeState(this.idLoaiSp,this.user);
}

class _AllProductsTypeState extends State<AllProductsType> {
  final User user;
  final int idLoaiSp;
  _AllProductsTypeState(this.idLoaiSp,this.user);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
        future: apiListLoaiSanpham(idLoaiSp),
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
                      size: snapshot.data![i].kichThuoc!,
                      id: snapshot.data![i].iD!,
                      ten: snapshot.data![i].tenSp!,
                      hinhAnh: snapshot.data![i].hinhAnh!,
                      gia: snapshot.data![i].gia!,
                      moTa: snapshot.data![i].mota!,
                      thongTin: snapshot.data![i].thongTin!,
                    ));
          }
          return Container();
        });
  }
}
