//import 'package:app_thoi_trang/models/product.dart';
//import 'package:app_thoi_trang/models/san_pham.dart';
import 'package:app_thoi_trang/screens/product_deltail/product_deltail_screen.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class PdtItem extends StatelessWidget {
  final int id;
  final String ten;
  final String hinhAnh;
  final int gia;
  final String moTa;
  final String thongTin;
  

  // ignore: prefer_const_constructors_in_immutables
  PdtItem({Key? key,required this.id, required this.ten, required this.hinhAnh, required this.gia,required this.moTa,required this.thongTin}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //final pdt = Provider.of<Product>(context);

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      splashColor: const Color(0xff202d59),
      onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductDetailScreen(ten:ten,hinhAnh: hinhAnh,thongTin: thongTin,moTa: moTa,gia: gia,)));},
      child: Container(
        margin:const EdgeInsets.only(top:10,left:10,right: 10),
        
        child: GridTile(
          child: Image.asset('assets/img/product/'+hinhAnh),
          footer: GridTileBar(
            title: Text(
              ten,
              style:const TextStyle(color: Colors.white),
            ),
            trailing: IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Color(0xffed0000),
                ),
                onPressed: () {}),
            subtitle: Text(
              gia.toString() + "\$",
              style: const TextStyle(color: Color(0xffed0000),),
            ),
            backgroundColor:const Color(0xff202d59).withOpacity(0.6),
          ),
        ),
      ),
    );
  }
}
