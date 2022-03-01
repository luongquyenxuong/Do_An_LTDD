// ignore_for_file: unnecessary_const, must_be_immutable

//import 'dart:html';

import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/network/network_request.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class changeinfoscreen extends StatefulWidget {
  User? user;
  changeinfoscreen({Key? key, this.user}) : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  _MyChangeInfo createState() => _MyChangeInfo(user);
}

class _MyChangeInfo extends State<changeinfoscreen> {
  User? user;
  late String? ten = user?.hoTen;
  _MyChangeInfo(this.user);
  var hotenController = TextEditingController();
  late int? sex = user?.gioiTinh;
  //late int? giotinh=user.gioiTinh;
  var gioitinhController = TextEditingController();
  late String? email = user?.email;
  var emailController = TextEditingController();
  late String? sdt = user?.sDT;
  var sdtController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
//  void _printLatestValue() {
//    hotenController.clear();
//    user.hoTen=hotenController.text;
//   print('Second text field: ${hotenController.text}');
// }
// @override
// void initState() {
//   super.initState();

//   // Start listening to changes.
//   hotenController.addListener(_printLatestValue);
// }
// @override
// void dispose() {
//   // Clean up the controller when the widget is removed from the widget tree.
//   // This also removes the _printLatestValue listener.
//   hotenController.dispose();
//   super.dispose();
// }
  String? value;
  final items = ['Nam', 'Nữ'];
  gioitinh() {
    if (user?.gioiTinh == 1) {
      value = "Nam";
      return value;
    }
    value = "Nữ";
    return value;
  }

  @override
  Widget build(BuildContext context) {
    //user.hoTen=hotenController.text;

    // emailController.text=user.email!;
    // sdtController.text=user.sDT!;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          backgroundColor: const Color(0xffD9D9D9),
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            title: const Text(
              'Tài Khoản',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context, user);
                },
                icon: const Icon(Icons.arrow_back_ios)),
            actions: [
              TextButton(
                onPressed: () async {
                  if (formkey.currentState!.validate()) {
                    final result = await updateUser(
                        user?.id ?? 0,
                        emailController.text,
                        user?.password ?? "",
                        hotenController.text,
                        sdtController.text,
                        sex!,
                        context);
                    setState(() {
                      user = result;
                    });
                  }
                },
                child: const Text(
                  'Lưu',
                  style: TextStyle(color: Color(0xff0500FF), fontSize: 17),
                ),
              ),
            ],
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 2,
          ),
          body: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Form(
              key: formkey,
              child: Column(
                children: <Widget>[
                  // Container(
                  //   padding: const EdgeInsets.only(top: 10),
                  // ),\
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
                          onChanged: (_ten) {
                            ten = _ten;
                            //print(ten);
                          },
                          // initialValue: "${user.hoTen}",
                          controller: hotenController..text = ten!,
                          keyboardType: TextInputType.name,
                          decoration:
                              const InputDecoration.collapsed(hintText: "Tên"),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    //height: 40,
                    color: Colors.white,
                    // padding:
                    //     const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 0),
                      child: DropdownButtonFormField<String>(
                        value: gioitinh(),
                        //isExpanded: true,
                        //iconSize: 30,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          //labelText: 'Giới Tính',
                          hintText: 'Giới tính',
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
                            // print(sex) ;
                          } else {
                            sex = 2;
                            // print(sex);
                          }
                        }),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
                          onChanged: (_email) {
                            email = _email;
                          },
                          controller: emailController..text = email!,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration.collapsed(
                              hintText: "Email"),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
                          onChanged: (_sdt) {
                            sdt = _sdt;
                          },
                          controller: sdtController..text = sdt!,
                          keyboardType: TextInputType.number,
                          decoration:
                              const InputDecoration.collapsed(hintText: "SĐT "),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),

                  // Container(
                  //   height: 40,
                  //  //padding: EdgeInsets.only(top:4,),
                  //    color: Colors.white,
                  //   child: TextField(
                  //     keyboardType: TextInputType.text,

                  //     style: const TextStyle(color: Colors.black87),
                  //     decoration: InputDecoration(
                  //         border: InputBorder.none,
                  //       //border: const OutlineInputBorder(),
                  //       //labelText: 'Mật Khẩu',
                  //       hintText: 'Mật Khẩu',
                  //       hintStyle: const TextStyle(
                  //         fontSize: 16,

                  //       ),
                  //       contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                  //       suffixIcon: IconButton(
                  //         icon: Icon(_secureText
                  //             ? Icons.remove_red_eye
                  //             : Icons.security),
                  //         onPressed: () {
                  //           setState(() {
                  //             _secureText = !_secureText;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     obscureText: _secureText,
                  //   ),
                  // ),

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
