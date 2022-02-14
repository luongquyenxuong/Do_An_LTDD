// import 'package:flutter/material.dart';

// //import 'package:provider/provider.dart';
// import '../../models/cart_detail.dart';
// import '../cart/detail_cart.dart';

// class CartItemDetail extends StatefulWidget {
//   const CartItemDetail({Key? key}) : super(key: key);

//   @override
//   _CartItemState createState() => _CartItemState();
// }

// class _CartItemState extends State<CartItemDetail> {
//   @override
//   Widget build(BuildContext context) {
//     final prdetailcart = Provider.of<CartDetails>(context);
//     final pddetailcart= prdetailcart.items;
//     return ListView.separated(
//       physics: const ScrollPhysics(),
//       shrinkWrap: true,
//       separatorBuilder: (BuildContext context, int index) => const SizedBox(
//         height: 10,
//       ),
//       itemCount: pddetailcart.length,
//       itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
//         value: pddetailcart[i],
//         child: ItemsDetailCart(
//           name: pddetailcart[i].name,
//           size: pddetailcart[i].size,
//           imageUrl: pddetailcart[i].imgUrl,
//           quantity: pddetailcart[i].quantity,
//           price: pddetailcart[i].price.toInt(),
//         ),
//       ),
//     );
//   }
// }
