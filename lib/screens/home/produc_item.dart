import 'package:app_thoi_trang/models/cart.dart';
import 'package:app_thoi_trang/models/db_helper.dart';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/product_deltail/product_deltail_screen.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class PdtItem extends StatelessWidget {
  int? id;
  String? ten;
  String? hinhAnh;
  String? size;
  int? gia;
  String? moTa;
  String? thongTin;
  final User user;
  // ignore: prefer_const_constructors_in_immutables
  PdtItem(
      {Key? key,
      required this.user,
      this.id,
      this.ten,
      this.hinhAnh,
      this.size,
      this.gia,
      this.moTa,
      this.thongTin})
      : super(key: key);
  @override
  Widget build(BuildContext context) {

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      splashColor: const Color(0xff202d59),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetailScreen(
                      size: size,
                      user: user,
                      id: id,
                      ten: ten,
                      hinhAnh: hinhAnh,
                      thongTin: thongTin,
                      moTa: moTa,
                      gia: gia,
                    )));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: GridTile(
          child: Image.asset('assets/img/product/' + hinhAnh!),
          //  CachedNetworkImage(
          //             imageUrl: "http://10.0.2.2:8000/storage/assets/images/product-image/" + widget.sanPham.hinhAnh!,
          //             width: 100,
          //             height: 120,
          //             placeholder: (context, url) => const Center(
          //               child: CupertinoActivityIndicator(),
          //             ),
          //             errorWidget: (context, url, error) => Container(
          //               color: Colors.black12,
          //             ),
          //           ),
          footer: GridTileBar(
            title: Text(
              ten!,
              style: const TextStyle(color: Colors.white),
            ),
            trailing: IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Color(0xffed0000),
                ),
                onPressed: () {
                  }),
            subtitle: Text(
              gia.toString() + "\$",
              style: const TextStyle(
                color: Color(0xffed0000),
              ),
            ),
            backgroundColor: const Color(0xff202d59).withOpacity(0.6),
          ),
        ),
      ),
    );
  }
}
