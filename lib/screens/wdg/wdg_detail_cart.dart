import 'package:app_thoi_trang/models/cthd.dart';
import 'package:app_thoi_trang/network/network_request.dart';
import 'package:flutter/material.dart';



import '../cart/detail_cart.dart';

// ignore: must_be_immutable
class CartItemDetail extends StatefulWidget {
  int idHD;
   CartItemDetail({Key? key,required this.idHD}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _CartItemState createState() => _CartItemState(idHD);
}

class _CartItemState extends State<CartItemDetail> {
  int idHD;
_CartItemState(this.idHD);
  @override
  Widget build(BuildContext context) {
    
    return FutureBuilder<List<CTHD>>(
      future: cthd(idHD),
      builder: (context, snapshot) {
        if(snapshot.hasData)
        {
          return ListView.separated(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 10,
        ),
        itemCount: snapshot.data?.length??0,
        itemBuilder: (ctx, i) =>     
           ItemsDetailCart(
             name: snapshot.data![i].tenSp!,
             size: snapshot.data![i].kichThuoc!,
             imageUrl: snapshot.data![i].hinhAnh!,
             quantity: snapshot.data![i].soLuong!,
             price: snapshot.data![i].gia!,
          ),
        
      );
        }return const Text('No data');
      },
     
    );
  }
}
