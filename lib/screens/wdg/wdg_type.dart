import 'package:app_thoi_trang/models/loai_san_pham.dart';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/home/type_product.dart';
import 'package:flutter/material.dart';
import '../../network/network_request.dart';

// ignore: must_be_immutable
class TypeProduct extends StatefulWidget {
  final User user;
   TypeProduct({Key? key,required this.user}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _State createState() => _State(user);
}

class _State extends State<TypeProduct> {
  final User user;

_State(this.user);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
       
          Container(
            padding:const EdgeInsets.only(top: 5.0,left: 5.0),
            width: 500,
            color: Colors.white,
            child: const Text('Danh mục sản phẩm',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
        Container(
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
                       user: user,
                      id:snapshot.data![i].iD!,
                      name: snapshot.data![i].tenLoaiSP!,
                      imageUrl: snapshot.data![i].hinhAnh!,
                      size: size,
                      ),
                  );
             }
            
          ),
        ),
      ],
    );
  }
}
