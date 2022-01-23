import 'package:app_thoi_trang/models/loai_san_pham.dart';
import 'package:app_thoi_trang/screens/home/type_product.dart';
import 'package:flutter/material.dart';
import '../../network/network_request.dart';

class TypeProduct extends StatefulWidget {
  const TypeProduct({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<TypeProduct> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 225,
            decoration:const BoxDecoration(
            color:Colors.white,
              border: Border(
                bottom: BorderSide(
                  width: 0.5,
                color: Colors.grey,
                )
              )
            ),
      child: FutureBuilder<List<LoaiSanPham>>(
        future:apiListLoai() ,
         builder: (context, snapshot){
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            // physics: const ScrollPhysics(),
            // shrinkWrap: true,
            itemCount: snapshot.data?.length??0,
            itemBuilder: (ctx, i) => 
                 Typeprd(
                  id:snapshot.data![i].iD!,
                  name: snapshot.data![i].tenLoaiSP!,
                  imageUrl: snapshot.data![i].hinhAnh!,
                  size: size,
                  ),
              );
         }
        
      ),
    );
  }
}
