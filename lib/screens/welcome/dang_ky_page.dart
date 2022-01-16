// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

// ignore: camel_case_types
class dangkyscreen extends StatefulWidget {
  const dangkyscreen({Key? key}) : super(key: key);

  

  @override
  _State createState() => _State();
}

class _State extends State<dangkyscreen> {
  bool _secureText = true;
  final items = ['Nam', 'Nữ'];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title:const Text(
              'Đăng Ký',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            ),
            iconTheme: const IconThemeData(
          color: Colors.black,
          
        ),
            elevation: 2,
          ),
          body: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Thông tin tài khoản',
                    style: TextStyle(color: Color(0xff3515FA), fontSize: 20.0),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: const TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Tài Khoản',
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff2D3132),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child:  TextField(
                    keyboardType: TextInputType.text,
                    style:const TextStyle(color: Colors.black87),
                    obscureText: _secureText,
                    decoration: InputDecoration(
                      border:const OutlineInputBorder(),
                      labelText: 'Mật Khẩu',
                      contentPadding:const EdgeInsets.only(top: 14),
                      prefixIcon:const Icon(
                        Icons.lock,
                        color: Color(0xff2D3132),
                        
                      ),
                      suffixIcon: IconButton(
                          icon: Icon(_secureText
                              ? Icons.remove_red_eye
                              : Icons.security),
                          onPressed: () {
                            setState(() {
                              _secureText = !_secureText;
                            });
                          },
                        ),
                        
                    ),
                    
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child:  TextField(
                    keyboardType: TextInputType.text,
                     obscureText: _secureText,
                    style:const TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      border:const OutlineInputBorder(),
                      labelText: 'Xác Nhận Mật Khẩu',
                      contentPadding:const EdgeInsets.only(top: 14),
                      prefixIcon:const Icon(
                        Icons.lock,
                        color: Color(0xff2D3132),
                      ),
                       suffixIcon: IconButton(
                          icon: Icon(_secureText
                              ? Icons.remove_red_eye
                              : Icons.security),
                          onPressed: () {
                            setState(() {
                              _secureText = !_secureText;
                            });
                          },
                        ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: const TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Họ và Tên',
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.badge,
                        color: Color(0xff2D3132),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: const TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xff2D3132),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Số Điện Thoại',
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color(0xff2D3132),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:const Color(0xff3515FA),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),),
                      fixedSize: const Size(300, 10),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Đăng Ký',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
// ignore: camel_case_types
