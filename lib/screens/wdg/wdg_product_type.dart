import 'package:app_thoi_trang/models/product.dart';
import 'package:app_thoi_trang/screens/home/produc_item.dart';
import 'package:flutter/material.dart';
import '../../network/network_request.dart';
//import 'package:provider/provider.dart';
//import '../../models/product.dart';
//import 'package:http/http.dart' as http;

class AllProductsType extends StatefulWidget {
  final int idLoaiSp;
  const AllProductsType({Key? key, required this.idLoaiSp}) : super(key: key);

  @override
  // ignore: unnecessary_this, no_logic_in_create_state
  State<AllProductsType> createState() => _AllProductsTypeState(this.idLoaiSp);
}

class _AllProductsTypeState extends State<AllProductsType> {
  final int idLoaiSp;
  _AllProductsTypeState(this.idLoaiSp);

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
