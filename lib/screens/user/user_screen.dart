//import 'package:flutter/gestures.dart';
// ignore_for_file: unnecessary_this, no_logic_in_create_state

import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/screens/user/change_info_screen.dart';
import 'package:app_thoi_trang/screens/user/change_pass_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserScreen extends StatefulWidget {
  User? user;
  UserScreen({Key? key, this.user}) : super(key: key);

  @override
  _UserState createState() => _UserState(this.user);
}

class _UserState extends State<UserScreen> {
  User? user;
  _UserState(this.user);
  gioitinh() {
    if (user?.gioiTinh == 1) {
      return "Nam";
    }
    return "Nữ";
  }

  @override
  Widget build(BuildContext context) {
    var _user = user;
    return Scaffold(
      backgroundColor: const Color(0xffD9D9D9),
      appBar: AppBar(
        title: const Text('Tài khoản', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, _user);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 180,
            child: Stack(
              children: [
                InkWell(
                  onTap: () {},
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/img/icon/${user?.avatar ?? "3177440.png"}',
                          width: 500,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 142,
                  child: Opacity(
                    opacity: 0.5,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.pink,
                        backgroundColor: const Color(0xff000000),
                        minimumSize: const Size(420, 10),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Chạm để thay đổi',
                        style: TextStyle(color: Color(0xffFFFFFF), fontSize: 8),
                      ),
                    ),
                  ),
                ),
                // Align(
                //   alignment: Alignment.center,
                //   child: Material(
                //     color: Colors.white,
                //     shape: const CircleBorder(),
                //     child: InkWell(
                //       splashColor: Colors.white,
                //       onTap: () {},
                //       child: Column(
                //         mainAxisSize: MainAxisSize.min,
                //         children: [
                //           Ink.image(
                //             image:  AssetImage(
                //               'assets/img/icon/${user.avatar}',
                //             ),
                //             height: 50,
                //             width: 50,
                //             fit: BoxFit.cover,
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),

          Container(
            height: 30,
            padding: const EdgeInsets.only(right: 20, left: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  //                    <--- top side
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Tên',
                ),
                //  const SizedBox(
                //     width: 280,
                //   ),
                Text(
                  user?.hoTen ?? "",
                ),
              ],
            ),
          ),
          // Container(
          //   height: 30,
          //   padding: const EdgeInsets.only(
          //     left: 30,
          //   ),
          //   decoration: const BoxDecoration(
          //     color: Colors.white,
          //     border: Border(
          //         ),
          //   ),
          //   child: Row(

          //     children: const [
          //       Text(
          //         'Tên tài khoản',
          //       ),
          //       SizedBox(
          //         width: 213,
          //       ),
          //       Text(
          //         user.,
          //       ),
          //     ],
          //   ),
          // ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                // top:BorderSide(
                //   //                    <--- top side
                //   color: Colors.black,
                //   width: 1.0,
                // ),
                bottom: BorderSide(
                  //                    <--- top side
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Giới tính',
                ),
                Text(
                  gioitinh(),
                  //'Nam',
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                // top:BorderSide(
                //   //                    <--- top side
                //   color: Colors.black,
                //   width: 1.0,
                // ),
                bottom: BorderSide(
                  //                    <--- top side
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Ngày sinh',
                ),
                Text(
                  user?.ngaySinh ?? "Trống",
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                // top:BorderSide(
                //   //                    <--- top side
                //   color: Colors.black,
                //   width: 1.0,
                // ),
                bottom: BorderSide(
                  //                    <--- top side
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Điện thoại',
                ),
                Text(
                  user?.sDT ?? "",
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                // top:BorderSide(
                //   //                    <--- top side
                //   color: Colors.black,
                //   width: 1.0,
                // ),
                bottom: BorderSide(
                  //                    <--- top side
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Email',
                ),
                Text(
                  user?.email ?? "",
                  style: const TextStyle(
                    color: Color(0xffFA1515),
                    // decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () async {
              final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => changeinfoscreen(
                            user: user!,
                          )));
              setState(() {
                //idDC=result;
                user = result;
              });
            },
            child: Container(
              height: 30,
              padding: const EdgeInsets.only(
                left: 20,
                right: 10,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  // top:BorderSide(
                  //   //                    <--- top side
                  //   color: Colors.black,
                  //   width: 1.0,
                  // ),
                  bottom: BorderSide(
                    //                    <--- top side
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Thay đổi thông tin cá nhân',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    //padding:EdgeInsets.only(top:1),
                    Icons.arrow_forward_ios,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () async {
              final result= await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => changepassscreen(
                            password: user!.password!,
                            id: user!.id!,
                            user: user!,
                          )));
              setState(() {
                //idDC=result;
                user = result;
              });
            },
            child: Container(
              height: 30,
              padding: const EdgeInsets.only(
                left: 20,
                right: 10,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  // top:BorderSide(
                  //   //                    <--- top side
                  //   color: Colors.black,
                  //   width: 1.0,
                  // ),
                  bottom: BorderSide(
                    //                    <--- top side
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Thay đổi mật khẩu',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
