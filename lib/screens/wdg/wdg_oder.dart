// import 'package:app_thoi_trang/models/order.dart';
// import 'package:app_thoi_trang/screens/cart/donhang.dart';
// import 'package:flutter/material.dart';


// //import 'package:provider/provider.dart';

// class Wgtdonmua extends StatefulWidget {
//   const Wgtdonmua({Key? key}) : super(key: key);

//   @override
//   _WgtdonmuaState createState() => _WgtdonmuaState();
// }

// class _WgtdonmuaState extends State<Wgtdonmua> {
//   @override
//   Widget build(BuildContext context) {
//    // final idonmua = Provider.of<DonmuaItems>(context);
//    // final idonmua2 = idonmua.items;
//     return ListView.builder(
//         physics: const ScrollPhysics(),
//         shrinkWrap: true,
//         itemCount: idonmua2.length,
//         itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
//               value: idonmua2[i],
//               child: Donmuas(
//                 ngaytao: idonmua2[i].ngaytao,
//                 tensanpham: idonmua2[i].tensanpham,
//                 trangthai: idonmua2[i].trangthai,
//                 soluong: idonmua2[i].soluong,
//                 hinhanh: idonmua2[i].hinhanh,
//                 gia: idonmua2[i].gia,
//               ),
//             ));
//   }
// }