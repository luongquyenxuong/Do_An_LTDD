//import 'package:app_thoi_trang/models/product.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class PdtItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int price;

  // ignore: prefer_const_constructors_in_immutables
  PdtItem({Key? key, required this.name, required this.imageUrl, required this.price}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //final pdt = Provider.of<Product>(context);

    return InkWell(
      borderRadius: BorderRadius.circular(12),
        splashColor: const Color(0xff202d59),
      onTap: () {Navigator.pushNamed(context, '/chitietsanpham');},
      child: Container(
        margin:const EdgeInsets.only(top:10,left:10,right: 10),
        
        child: GridTile(
          child: Image.asset('assets/img/product/'+imageUrl),
          footer: GridTileBar(
            title: Text(
              name,
              style:const TextStyle(color: Colors.white),
            ),
            trailing: IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Color(0xffed0000),
                ),
                onPressed: () {}),
            subtitle: Text(
              price.toString() + "\$",
              style: const TextStyle(color: Color(0xffed0000),),
            ),
            backgroundColor:const Color(0xff202d59).withOpacity(0.6),
          ),
        ),
      ),
    );
  }
}
