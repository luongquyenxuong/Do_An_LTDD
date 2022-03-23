import 'package:app_thoi_trang/models/loai_san_pham.dart';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/home/type_product.dart';
import 'package:flutter/material.dart';
import '../../network/network_request.dart';

// ignore: must_be_immutable
class TypeProduct extends StatefulWidget {
  final User user;
   int? dc;
   TypeProduct({Key? key, required this.user,  this.dc})
      : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  _State createState() => _State(user, dc);
}
class _State extends State<TypeProduct> {
  final User user;
  int? dc;
  _State(this.user, this.dc);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 5.0, left: 5.0),
          width: 500,
          color: Colors.white,
          child:  Text(
            'Danh mục sản phẩm $dc',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 225,
          decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom: BorderSide(
                width: 0.5,
                color: Colors.grey,
              ))),
          child: FutureBuilder<List<LoaiSanPham>>(
              future: apiListLoai(),
              builder: (context, snapshot) {
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    // physics: const ScrollPhysics(),
                    // shrinkWrap: true,
                    itemCount: snapshot.data?.length ?? 0,
                    itemBuilder: (ctx, i) {
                      return Typeprd(
                        user: user,
                        dc: dc,
                        id: snapshot.data![i].iD!,
                        name: snapshot.data![i].tenLoaiSP!,
                        imageUrl: snapshot.data![i].hinhAnh!,
                        size: size,
                      );
                    });
              }),
        ),
      ],
    );
  }
}
