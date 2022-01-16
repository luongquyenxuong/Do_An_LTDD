//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
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
              Navigator.pop(context);
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
                      children:const [
                        // Image.asset(
                        //   'assets/img/icon/HinhNenCam.png',
                        //   width: 500,
                        //   height: 178,
                        //   fit: BoxFit.cover,
                        // ),
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
                Align(
                  alignment: Alignment.center,
                  child: Material(
                    color: Colors.white,
                    shape: const CircleBorder(),
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage(
                              'assets/img/icon/1144760.png',
                            ),
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
         
          Container(
            height: 30,
            padding: const EdgeInsets.only(
              left: 30,
            ),
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
              
              children: const [
                Text(
                  'Tên',
                ),
                SizedBox(
                  width: 280,
                ),
                Text(
                  'Kiệt',
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.only(
              left: 30,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                  ),
            ),
            child: Row(
             
              children: const [
                Text(
                  'Tên tài khoản',
                ),
                SizedBox(
                  width: 213,
                ),
                Text(
                  'Kiet84',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.only(
              left: 30,
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
              //mainAxisAlignment: MainAxisAlignment.,
              children: const [
                Text(
                  'Giới tính',
                ),
                SizedBox(
                  width: 250,
                ),
                Text(
                  'Nam',
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.only(
              left: 30,
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
              //mainAxisAlignment: MainAxisAlignment.,
              children: const [
                Text(
                  'Ngày sinh',
                ),
                SizedBox(
                  width: 220,
                ),
                Text(
                  '08/04/2001',
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.only(
              left: 30,
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
              //mainAxisAlignment: MainAxisAlignment.,
              children: const [
                Text(
                  'Điện thoại',
                ),
                SizedBox(
                  width: 220,
                ),
                Text(
                  '******382',
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.only(
              left: 30,
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
              //mainAxisAlignment: MainAxisAlignment.,
              children: const [
                Text(
                  'Email',
                ),
                SizedBox(
                  width: 220,
                ),
                Text(
                  'Kiet84@gmail.com',
                  style: TextStyle(
                    color: Color(0xffFA1515),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/thaydoithongtin');
            },
            child: Container(
              height: 30,
              padding: const EdgeInsets.only(
                left: 30,
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
                children:const [
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
            onTap: () {
              Navigator.pushNamed(context, '/thaydoimatkhau');
            },
            child: Container(
              height: 30,
              padding:const EdgeInsets.only(
                left: 30,
              ),
              decoration:const BoxDecoration(
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
                children:const [
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
