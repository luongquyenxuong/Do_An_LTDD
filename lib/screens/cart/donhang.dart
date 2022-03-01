import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/network/network_request.dart';
import 'package:app_thoi_trang/screens/cart/detail_cart_screen.dart';
//import 'package:app_thoi_trang/screens/cart/order_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Donmuas extends StatefulWidget {
  String ngayTao;
  String thanhTien;
  int trangThai;
  int id;
  User user;
  int? iddiachi;
  Donmuas({
    Key? key,
    required this.ngayTao,
    required this.id,
    required this.thanhTien,
    required this.trangThai,
    this.iddiachi,
    required this.user,
  }) : super(key: key);
  @override
  _DonmuaState createState() =>
      // ignore: no_logic_in_create_state
      _DonmuaState(id, ngayTao, thanhTien, trangThai, iddiachi, user);
}

class _DonmuaState extends State<Donmuas> {
  User user;
  int id;
  String ngayTao;
  int trangThai;
  String thanhTien;
 
onGoBack(dynamic value) {
    setState(() {});
  }
  int? iddiachi;
  _DonmuaState(this.id, this.ngayTao, this.thanhTien, this.trangThai,
      this.iddiachi, this.user);

  settrangthai() {
    if (trangThai == 0) {
      return 'Chờ xác nhận';
    }
    if (trangThai == 1) {
      return 'Đang giao';
    }
    if (trangThai == 2) {
      return 'Đã giao';
    }
    if (trangThai == 3) {
      return 'Đã hủy';
    }
    //return "";
  }

  setColorTrangThai() {
    if (trangThai == 2) {
      return Colors.lightBlueAccent;
    } else if (trangThai == 1) {
      return Colors.green;
    } else if (trangThai == 0) {
      return Colors.lightBlue;
    } else if (trangThai == 3) {
      return Colors.red;
    }
  }

  // int tinhtong() {
  //   return soluong * gia;
  // }

  hiddenrate() {
    if (trangThai == 2) {
      return true;
    } else {
      return false;
    }
  }

  hiddenbuy() {
    if (trangThai == 2 || trangThai == 1 || trangThai == 3) {
      return true;
    } else {
      return false;
    }
  }

  hiddenwait() {
    if (trangThai == 0) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Detail(
                      id: id,
                      trangthai: trangThai,
                      thanhtien: int.parse(thanhTien),
                      //iddiachi:iddiachi!,
                    )));
      },
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: Colors.white,
        ),
        margin: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  ngayTao,
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                ),
                const Spacer(),
                Text(
                  settrangthai(),
                  style: TextStyle(color: setColorTrangThai(), fontSize: 15),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey),
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    'ID hóa đơn: $id ',
                    style: const TextStyle(color: Colors.blue),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: const Text(
                      'Tổng:',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  Text(
                    thanhTien,
                    style: const TextStyle(color: Colors.red),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: Visibility(
                        visible: false,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amber,
                                onPrimary: Colors.white,
                                fixedSize: const Size(100, 35),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Đánh giá',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Visibility(
                      visible: hiddenbuy(),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                          fixedSize: const Size(100, 35),
                        ),
                        onPressed: () {
                           showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: const Text("Thông báo"),
                                    content: const Text("Bạn có muốn đặt lại đơn hàng ?"),
                                    actions: <Widget>[
                                      TextButton(
                                        child: const Text("Xác nhận"),
                                        onPressed: ()async{
                                          final result= await updateHD(id,0,context);
                                        setState(() {
                                          trangThai=result!.trangThai!;
                                        });
                                        },
                                      ),
                                      TextButton(
                                        child: const Text("Hủy"),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ));
                        },
                        child: const Text(
                          'Mua lại',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                  Visibility(
                      visible: hiddenwait(),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          onPrimary: Colors.white,
                          fixedSize: const Size(150, 35),
                          disabledMouseCursor: SystemMouseCursors.basic,
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: const Text("Thông báo"),
                                    content: const Text("Bạn có muốn hủy ?"),
                                    actions: <Widget>[
                                      TextButton(
                                        child: const Text("Xác nhận"),
                                        onPressed: ()async{
                                          final result= await updateHD(id,3,context);
                                        setState(() {
                                          trangThai=result!.trangThai!;
                                        });
                                        },
                                      ),
                                      TextButton(
                                        child: const Text("Hủy"),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ));
                        },
                        child: const Text(
                          'Hủy',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
