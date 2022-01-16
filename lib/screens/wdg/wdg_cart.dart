import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../../models/cart.dart';
import '../cart/product_cart.dart';

class CartItem extends StatefulWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    final prcart = Provider.of<Carts>(context);
    final pdcart = prcart.items;
    return ListView.separated(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 10,
      ),
      itemCount: pdcart.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: pdcart[i],
        child: ItemsCart(
          name: pdcart[i].name,
          size: pdcart[i].size,
          imageUrl: pdcart[i].imgUrl,
          quantity: pdcart[i].quantity,
          price: pdcart[i].price.toInt(),
        ),
      ),
    );
  }
}
