// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

class Donmuas extends StatefulWidget {
  final DateTime ngaytao;
  final String tensanpham;
  final int trangthai;
  final int soluong;
  final String hinhanh;
  final int gia;
  const Donmuas(
      {Key? key,
      required this.ngaytao,
      required this.tensanpham,
      required this.trangthai,
      required this.soluong,
      required this.hinhanh,
      required this.gia})
      : super(key: key);
  @override
  _DonmuaState createState() =>
      // ignore: no_logic_in_create_state
      _DonmuaState(this.ngaytao, this.tensanpham, this.trangthai, this.soluong,
          this.hinhanh, this.gia);
}

class _DonmuaState extends State<Donmuas> {
  final DateTime ngaytao;
  final String tensanpham;
  final int trangthai;
  final int soluong;
  final String hinhanh;
  final int gia;
  _DonmuaState(this.ngaytao, this.tensanpham, this.trangthai, this.soluong,
      this.hinhanh, this.gia);

  settrangthai() {
    if (trangthai == 1) {
      return 'Thành công';
    } else if (trangthai == 2) {
      return 'Đang giao';
    } else if (trangthai == 3) {
      return 'Chờ xác nhận';
    } else if (trangthai == 4) {
      return 'Đã hủy';
    }
  }

 
  setColorTrangThai()  {
    if (trangthai == 1) {
      return Colors.lightBlueAccent;
    } else if (trangthai == 2) {
      return Colors.green;
    } else if (trangthai == 3) {
      return Colors.lightBlue;
    } else if (trangthai == 4) {
      return Colors.red;
    }
  }

  int tinhtong() {
    return soluong * gia;
  }

  hiddenrate() {
    if (trangthai == 1) {
      return true;
    } else {
      return false;
    }
  }

  hiddenbuy() {
    if (trangthai == 1 || trangthai == 2 || trangthai == 4) {
      return true;
    } else {
      return false;
    }
  }

  hiddenwait() {
    if (trangthai == 3) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/chitietdonhang");
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
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  ngaytao.toString(),
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
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Image.asset(
                      hinhanh,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    width: 220,
                    height: 100,
                    child: Stack(
                      children: <Widget>[
                        Text(
                          tensanpham,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Positioned(
                            bottom: 0,
                            left: 0,
                            child: Text('x' + soluong.toString())),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Text(
                              gia.toString(),
                              style: const TextStyle(color: Colors.blue),
                            )),
                      ],
                    ),
                  ),
                ],
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
                children: <Widget>[
                  Text(
                    soluong.toString() + ' sản phẩm',
                    style:const TextStyle(color: Colors.blue),
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
                    tinhtong().toString(),
                    style:const TextStyle(color: Colors.red),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: Visibility(
                        visible: hiddenrate(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
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
                        onPressed: () {},
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
                        onPressed: () {},
                        child: const Text(
                          'Đang xử lí...',
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
