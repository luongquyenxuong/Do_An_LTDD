import 'package:app_thoi_trang/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../cart/product_cart.dart';

class CartItem extends StatefulWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
    

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        builder: (context, AsyncSnapshot<List<Cart>?> snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                height: 10,
              ),
              itemCount: snapshot.data?.length??0,
              itemBuilder: (ctx, i) => ItemsCart(
                id: snapshot.data![i].id!,
                productID: snapshot.data![i].idSp!,
                initialprice: snapshot.data![i].giabandau!,
                name: snapshot.data![i].tenSp!,
                size: snapshot.data![i].size!,
                imageUrl: snapshot.data![i].hinhAnh!,
                quantity: snapshot.data![i].soluong!,
                price: snapshot.data![i].gia!,
              ),
            );
          }
           return Container();
        });
  }
}
