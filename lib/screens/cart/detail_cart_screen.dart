//import 'package:app_thoi_trang/models/cart_detail.dart';
//import 'package:app_thoi_trang/screens/wdg/wdg_detail_cart.dart';
import 'package:app_thoi_trang/models/cthd.dart';
import 'package:app_thoi_trang/network/network_request.dart';
import 'package:app_thoi_trang/screens/wdg/wdg_detail_cart.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe

// ignore: must_be_immutable
class Detail extends StatefulWidget {
  int id;
  int trangthai;
  int thanhtien;
  int? iddiachi;
  Detail(
      {Key? key,
      required this.id,
      required this.trangthai,
      required this.thanhtien,
      this.iddiachi})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<Detail> createState() =>
      // ignore: no_logic_in_create_state
      _DetailState(id, trangthai, thanhtien, iddiachi);
}

class _DetailState extends State<Detail> {
  final int ship1 = 2;
  int id;
  int thanhtien;
  int? iddiachi;
  int trangthai;
  _DetailState(this.id, this.trangthai, this.thanhtien, this.iddiachi);

  settrangthai() {
    if (trangthai == 0) {
      return 'Chờ xác nhận';
    }
    if (trangthai == 1) {
      return 'Đang giao';
    }
    if (trangthai == 2) {
      return 'Đã giao';
    }
    if (trangthai == 3) {
      return 'Đã hủy';
    }
    //return "";
  }

  setColorTrangThai() {
    if (trangthai == 2) {
      return Colors.lightBlueAccent;
    } else if (trangthai == 1) {
      return Colors.green;
    } else if (trangthai == 0) {
      return Colors.lightBlue;
    } else if (trangthai == 3) {
      return Colors.red;
    }
  }

  hiddenrate() {
    if (trangthai == 2) {
      return true;
    } else {
      return false;
    }
  }

  hiddenbuy() {
    if (trangthai == 2 || trangthai == 1 || trangthai == 3) {
      return true;
    } else {
      return false;
    }
  }

  hiddenwait() {
    if (trangthai == 0) {
      //print(trangthai);
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    //double _width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xffD9D9D9),
        appBar: AppBar(
          title: const Text('Thông tin đơn hàng'),
          backgroundColor: const Color(0xff202d59),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              height: 130,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.room,
                      color: Colors.red,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Builder(builder: (context) {
                      return FutureBuilder<CTHD?>(
                        future: cthdfirst(id),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return SizedBox(
                                width: 215,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Địa chỉ nhận hàng\n',
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                      snapshot.data!.ten!,
                                      style: const TextStyle(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      snapshot.data!.sDT!,
                                      style: const TextStyle(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Text(snapshot.data!.diaChi!,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ));
                          }
                          return const Text('no data');
                        },
                      );
                    }),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              color: Colors.white,
              padding: const EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                settrangthai(),
                style: TextStyle(color: setColorTrangThai()),
              ),
            ),
            Container(
              height: 30,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(
                    color: Colors.black,
                    width: 0.5,
                  ))),
              padding: const EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                'ID hóa đơn : $id',
                style: const TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 30,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.black,
                    width: 0.5,
                  ))),
              padding: const EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Danh sách sản phẩm:',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 10),
            CartItemDetail(
              idHD: id,
            ),
            const SizedBox(height: 10),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 80,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(

                        children: [
                          const Text('Giá tiền:'),
                          const Spacer(),
                          Text('${thanhtien - ship1}\$')

                        ],
                      ),
                      Row(
                        children: [
                          const Text('Phí giao hàng:'),
                          const Spacer(),
                          Text('$ship1\$')
                        ],
                      ),
                      Row(
                        children: [
                           const Text(
                            'Thành tiền :',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, color: Colors.red),
                          ),

                          const Spacer(),
                          Text('$thanhtien\$',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.red)),

                        ],
                      ),
                    ],
                  ),
                  // Visibility(
                  //   visible:hiddenrate() ,
                  //   child: InkWell(
                  //     onTap: () {},
                  //     child: Container(
                  //       height: 30,
                  //       width: _width,
                  //       margin: const EdgeInsets.only(top: 10),
                  //       color: Colors.red,
                  //       child: const Center(
                  //         child: Text('Mua lại',
                  //             style: TextStyle(color: Colors.white)),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Visibility(
                  //   visible: hiddenbuy(),
                  //   child: InkWell(
                  //     onTap: () {},
                  //     child: Container(
                  //       height: 30,
                  //       width: _width,
                  //       margin: const EdgeInsets.only(top: 10),
                  //       color: Colors.red,
                  //       child: const Center(
                  //         child: Text('Mua lại',
                  //             style: TextStyle(color: Colors.white)),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Visibility(
                  //   visible: hiddenwait(),
                  //   child: InkWell(
                  //     onTap: () {
                  //       showDialog(
                  //           context: context,
                  //           builder: (context) => AlertDialog(
                  //                 title: const Text("Thông báo"),
                  //                 content:
                  //                     const Text("Bạn có muốn xóa ?"),
                  //                 actions: <Widget>[
                  //                   TextButton(
                  //                     child: const Text("Xác nhận"),
                  //                     onPressed: ()async {
                  //                       //Navigator.of(context).pop();
                  //                        await huyHD(id, 3,context);
                                         
                  //                     },
                  //                   ),
                  //                    TextButton(
                  //                     child: const Text("Hủy"),
                  //                     onPressed: () {
                  //                       Navigator.of(context).pop();
                  //                     },
                  //                   ),
                  //                 ],
                  //               ));
                  //     },
                  //     child: Container(
                  //       height: 30,
                  //       width: _width,
                  //       margin: const EdgeInsets.only(top: 10),
                  //       color: Colors.red,
                  //       child: const Center(
                  //         child: Text('Hủy',
                  //             style: TextStyle(color: Colors.white)),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ));
  }
}
