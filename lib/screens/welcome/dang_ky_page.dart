

import 'package:app_thoi_trang/network/network_request.dart';
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
  String? value;

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordXacNhanController = TextEditingController();
  var hoTenController = TextEditingController();
  var phoneController = TextEditingController();
  int sex = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
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
            child: Form(
              key: formkey,
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Thông tin tài khoản',
                      style:
                          TextStyle(color: Color(0xff3515FA), fontSize: 20.0),
                    ),
                  ),


                  // Container(
                  //   padding:
                  //       const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  //   child: const TextField(
                  //     keyboardType: TextInputType.text,
                  //     style: TextStyle(color: Colors.black87),
                  //     decoration: InputDecoration(
                  //       border: OutlineInputBorder(),
                  //       labelText: 'Tài Khoản',
                  //       contentPadding: EdgeInsets.only(top: 14),
                  //       prefixIcon: Icon(
                  //         Icons.person,
                  //         color: Color(0xff2D3132),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email không được bỏ trống!";
                        }
                        if (!RegExp(r'^[\w-.]+@([\w-]+.)+[\w-]{2,4}$')
                            .hasMatch(value)) {
                          return "Vui lòng nhập đúng email";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.black87),
                      controller: emailController,
                      decoration: const InputDecoration(
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
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Mật khẩu không được bỏ trống !";
                        }
                        if (!RegExp(r'^(?=.*?).{6,}$').hasMatch(value)) {
                          return "Mật khẩu phải dài hơn 6 kí tự";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      style: const TextStyle(color: Colors.black87),
                      obscureText: _secureText,
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Mật Khẩu',
                        contentPadding: const EdgeInsets.only(top: 14),
                        prefixIcon: const Icon(
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
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Mật khẩu không được bỏ trống !";
                        }
                        if (!RegExp(r'^(?=.*?).{6,}$').hasMatch(value)) {
                          return "Mật khẩu phải dài hơn 6 kí tự";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      obscureText: _secureText,
                      controller: passwordXacNhanController,
                      style: const TextStyle(color: Colors.black87),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Xác Nhận Mật Khẩu',
                        contentPadding: const EdgeInsets.only(top: 14),
                        prefixIcon: const Icon(
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
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Vui lòng nhập họ tên !";
                        }

                        if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          //allow upper and lower case alphabets and space
                          return "Họ và tên không đúng !";
                        } else {
                          return null;
                        }
                      },
                      controller: hoTenController,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(color: Colors.black87),
                      decoration: const InputDecoration(
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
                    width: 310,
                    height: 40,
                    decoration: BoxDecoration(

                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.black54),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4))),
                    // padding:
                    //     const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: DropdownButtonFormField<String>(
                        // icon: Icon(Icons.money_off_csred_sharp,) ,
                        value: value,
                        //isExpanded: true,
                        //iconSize: 30,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          //labelText: 'Giới Tính',
                          hintText: 'Giới tính',
                          prefixIcon: Icon(
                            Icons.wc,
                            color: Color(0xff2D3132),
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                          ),
                          //contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical:6),
                        ),
                        items: items.map(buildMenuItem).toList(),
                        onChanged: (value) => setState(() {
                          this.value = value;
                          if (value == "Nam") {
                            sex = 1;
                            //  print(sex) ;
                          } else {
                            sex = 2;
                            // print(sex);
                          }
                        }),
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Sô điện thoại không được bỏ trống";
                        }

                        if (!RegExp(r'^(?:[+0][1-9])?[0-9]{10}$')
                            .hasMatch(value)) {
                          return "Số điện thoại không hợp lệ";
                        } else {
                          return null;
                        }
                      },
                      controller: phoneController,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.black87),
                      decoration: const InputDecoration(
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff3515FA),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fixedSize: const Size(300, 10),
                      ),
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          register(
                              emailController.text,
                              passwordController.text,
                              hoTenController.text,
                              phoneController.text,
                              sex,
                              context);
                        }
                      },
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
            ),
          )),
    );
  }
}

DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
    );
