//import 'package:app_thoi_trang/models/san_pham.dart';
import 'package:app_thoi_trang/models/san_pham.dart';
import 'package:app_thoi_trang/network/network_request.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int soluong = 1;
  void add() {
    setState(() {
      soluong++;
    });
  }

  void minus() {
    setState(() {
      if (soluong != 1) {
        soluong--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Thông tin sản phẩm'),
          centerTitle: true,
          backgroundColor: const Color(0xff202d59),
          iconTheme: const IconThemeData(color: Colors.white),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: FutureBuilder<SanPham?>(
          future: apiSanPham(),
          builder: (context, snapshot) {
            
            if (snapshot.hasData) {
              return ListView(children: [
                Image.asset(
                  'assets/img/product/${snapshot.data!.hinhAnh!}',
                  height: 300,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    snapshot.data!.tenSp!,
                    style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Giá: ${snapshot.data!.gia!.toString()}\$',
                    style: const TextStyle(
                      fontSize: 15,
                        color: Colors.red, fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Số lượng: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                    ),
                    Container(
                      width: 40,
                      height: 20,
                      decoration: BoxDecoration(
                          color: const Color(0xffE5E5E5),
                          borderRadius: BorderRadius.circular(12)),
                      child: IconButton(
                        //alignment: Alignment.topCenter,
                        padding: const EdgeInsets.only(top: 1),
                        onPressed: minus,
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('$soluong', style: const TextStyle(fontSize: 20.0)),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 40,
                      height: 20,
                      decoration: BoxDecoration(
                          color: const Color(0xffE5E5E5),
                          borderRadius: BorderRadius.circular(12)),
                      child: IconButton(
                        padding: const EdgeInsets.only(top: 0.1),
                        onPressed: add,
                        icon: const Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Ưu đãi dành cho bạn:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                  padding:const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/img/icon/buy.png',
                          height: 40,
                          width: 40,
                        ),
                        const Text('Mua trước trả sau')
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/img/icon/3901488.png',
                          height: 40,
                          width: 40,
                        ),
                        const Text('Miễn phí giao hàng')
                      ],
                    ),
                  ]),
                ),
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text(
                      'Mô tả sản phẩm:',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                ),
                Padding(
                 padding: const EdgeInsets.only(left:20.0),
                child: Text(
                    snapshot.data!.mota!,
                    style:const TextStyle(),
                  ),
                ),
               const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text(
                      'Thông tin sản phẩm:',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                ),
                Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: Text(
                    snapshot.data!.thongTin!,
                    style:const TextStyle(),
                  ),
                ),
                const SizedBox(height: 30,)
              ]);
            }
            return Container();
          },
        ));
  }
}
