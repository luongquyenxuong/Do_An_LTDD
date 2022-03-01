//import 'package:app_thoi_trang/models/order.dart';
//import 'package:app_thoi_trang/models/HoaDonTab.dart';
import 'package:app_thoi_trang/models/Invoice.dart';
//import 'package:app_thoi_trang/models/Invoice_detail.dart';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/network/network_request.dart';
import 'package:app_thoi_trang/screens/cart/donhang.dart';
import 'package:flutter/material.dart';

//import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Wgtdonmua extends StatefulWidget {
  User user;
  int trangThai;
  Wgtdonmua({Key? key, required this.user, required this.trangThai})
      : super(key: key);

  @override
  // ignore: unnecessary_this, no_logic_in_create_state
  _WgtdonmuaState createState() => _WgtdonmuaState(this.user, this.trangThai);
}

class _WgtdonmuaState extends State<Wgtdonmua> {
  User user;
  int trangThai;

  _WgtdonmuaState(this.user, this.trangThai);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Invoice>>(
      future: apiDanhSachHoaDon(user.id!, trangThai),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (ctx, i) => Donmuas(
                    user: user,
                    id: snapshot.data![i].id!,
                    thanhTien: snapshot.data![i].thanhTien.toString(),
                    trangThai: snapshot.data![i].trangThai!,
                    ngayTao: snapshot.data![i].createdAt!,
                  ));
        }
        return const Text("no data");
      },
    );
  }
}
