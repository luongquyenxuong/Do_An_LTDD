// import 'package:app_thoi_trang/network/network_request.dart';
// import 'package:flutter/material.dart';

// // ignore: camel_case_types
// class dangkyscreen extends StatefulWidget {
//   const dangkyscreen({Key? key}) : super(key: key);

//   @override
//   _State createState() => _State();
// }

// class _State extends State<dangkyscreen> {
//   bool _secureText = true;
//   final items = ['Nam', 'Nữ'];
//   int sex = 1;
//   String? sextype;
//   var nameController = TextEditingController();
//   var mailController = TextEditingController();
//   var phoneController = TextEditingController();
//   var matKhauController = TextEditingController();
//   var matKhauXacNhanController = TextEditingController();

//   final GlobalKey<FormState> formkey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         FocusScope.of(context).unfocus();
//       },
//       child: Scaffold(
//           appBar: AppBar(
//             title: const Text(
//               'Đăng Ký',
//               style: TextStyle(
//                 color: Colors.black,
//               ),
//             ),
//             backgroundColor: Colors.white,
//             centerTitle: true,
//             leading: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: const Icon(Icons.arrow_back_ios),
//             ),
//             iconTheme: const IconThemeData(
//               color: Colors.black,
//             ),
//             elevation: 2,
//           ),
//           body: SingleChildScrollView(
//             keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
//             child: Form(
//               key: formkey,
//               child: Column(
//                 children: <Widget>[
//                   const Padding(
//                     padding: EdgeInsets.all(15),
//                     child: Text(
//                       'Thông tin tài khoản',
//                       style:
//                           TextStyle(color: Color(0xff3515FA), fontSize: 20.0),
//                     ),
//                   ),
//                   Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
//                     child: TextFormField(
//                       validator: (String? value) {
//                         if (value!.isEmpty) {
//                           return "Vui lòng nhập email";
//                         }
//                         if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9-]+.[a-z].")
//                             .hasMatch(value)) {
//                           return "Vui lòng nhập email hợp lệ!";
//                         }
//                         return null;
//                       },
//                       // onSaved: (String? email) {
//                       //   mailController = email as TextEditingController;
//                       // },
//                       controller: mailController,
//                       keyboardType: TextInputType.emailAddress,
//                       style: const TextStyle(color: Colors.black87),
//                       decoration: const InputDecoration(
//                         border: OutlineInputBorder(),
//                         labelText: 'Email',
//                         contentPadding: EdgeInsets.only(top: 14),
//                         prefixIcon: Icon(
//                           Icons.email,
//                           color: Color(0xff2D3132),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
//                     child: TextFormField(
//                       controller: matKhauController,
//                       validator: (String? value) {
//                         if (value!.isEmpty) {
//                           return "Vui lòng nhập mật khẩu";
//                         }
//                         if (value.length < 6) {
//                           return "Mật khẩu phải có ít nhất 6 ký tự";
//                         }
//                         return null;
//                       },
//                       keyboardType: TextInputType.text,
//                       style: const TextStyle(color: Colors.black87),
//                       obscureText: _secureText,
//                       decoration: InputDecoration(
//                         border: const OutlineInputBorder(),
//                         labelText: 'Mật Khẩu',
//                         contentPadding: const EdgeInsets.only(top: 14),
//                         prefixIcon: const Icon(
//                           Icons.lock,
//                           color: Color(0xff2D3132),
//                         ),
//                         suffixIcon: IconButton(
//                           icon: Icon(_secureText
//                               ? Icons.remove_red_eye
//                               : Icons.security),
//                           onPressed: () {
//                             setState(() {
//                               _secureText = !_secureText;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
//                     child: TextFormField(
//                       validator: (String? value) {
//                         if (value!.isEmpty) {
//                           return "Vui lòng xác nhận lại mật khẩu";
//                         }
//                         if (matKhauController.text !=
//                             matKhauXacNhanController.text) {
//                           return "Xác nhận mật khẩu không trùng khớp!";
//                         }
//                         return null;
//                       },
//                       controller: matKhauXacNhanController,
//                       keyboardType: TextInputType.text,
//                       obscureText: _secureText,
//                       style: const TextStyle(color: Colors.black87),
//                       decoration: InputDecoration(
//                         border: const OutlineInputBorder(),
//                         labelText: 'Xác Nhận Mật Khẩu',
//                         contentPadding: const EdgeInsets.only(top: 14),
//                         prefixIcon: const Icon(
//                           Icons.lock,
//                           color: Color(0xff2D3132),
//                         ),
//                         suffixIcon: IconButton(
//                           icon: Icon(_secureText
//                               ? Icons.remove_red_eye
//                               : Icons.security),
//                           onPressed: () {
//                             setState(() {
//                               _secureText = !_secureText;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
//                     child: TextFormField(
//                       validator: (String? value) {
//                         if (value!.isEmpty) {
//                           return "Vui lòng nhập tên";
//                         }
//                         return null;
//                       },
//                       // onSaved: (String? name) {
//                       //   nameController = name as TextEditingController;
//                       // },
//                       controller: nameController,
//                       keyboardType: TextInputType.text,
//                       style: const TextStyle(color: Colors.black87),
//                       decoration: const InputDecoration(
//                         border: OutlineInputBorder(),
//                         labelText: 'Họ và Tên',
//                         contentPadding: EdgeInsets.only(top: 14),
//                         prefixIcon: Icon(
//                           Icons.badge,
//                           color: Color(0xff2D3132),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: 310,
//                     height: 40,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         border: Border.all(width: 1, color: Colors.black54),
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(4))),
//                     // padding:
//                     //     const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
//                     child: Padding(
//                       padding:
//                           //  const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
//                           const EdgeInsets.only(bottom: 5),
//                       child: DropdownButtonFormField<String>(
//                         // icon: Icon(Icons.money_off_csred_sharp,) ,
//                         value: sextype,
//                         //isExpanded: true,
//                         //iconSize: 30,
//                         decoration: const InputDecoration(
//                           border: InputBorder.none,
//                           //labelText: 'Giới Tính',
//                           hintText: 'Giới tính',
//                           prefixIcon: Icon(
//                             Icons.wc,
//                             color: Color(0xff2D3132),
//                           ),
//                           hintStyle: TextStyle(
//                             fontSize: 16,
//                           ),
//                           //contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical:6),
//                         ),
//                         items: items.map(buildMenuItem).toList(),
//                         onChanged: (sex1) => setState(() {
//                           sextype = sex1;
//                           if (sex1 == "Nam") {
//                             sex = 1;
//                             //  print(sex) ;
//                           } else {
//                             sex = 2;
//                             // print(sex);
//                           }
//                         }),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
//                     child: TextFormField(
//                       validator: (String? value) {
//                         if (value!.isEmpty) {
//                           return "Vui lòng nhập số điện thoại";
//                         }
//                         if (value.length < 9) {
//                           return "Vui lòng nhập số điện thoại hợp lệ!";
//                         }
//                         return null;
//                       },
//                       // onSaved: (String? phone) {
//                       //   phoneController = phone as TextEditingController;
//                       // },
//                       controller: phoneController,
//                       keyboardType: TextInputType.number,
//                       style: const TextStyle(color: Colors.black87),
//                       decoration: const InputDecoration(
//                         border: OutlineInputBorder(),
//                         labelText: 'Số Điện Thoại',
//                         contentPadding: EdgeInsets.only(top: 14),
//                         prefixIcon: Icon(
//                           Icons.phone,
//                           color: Color(0xff2D3132),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 50, vertical: 10),
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: const Color(0xff3515FA),
//                         onPrimary: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         fixedSize: const Size(300, 10),
//                       ),
//                       onPressed: () {
//                         registerUser(
//                             mailController.text,
//                             matKhauController.text,
//                             nameController.text,
//                             sex,
//                             phoneController.text,
//                             context);
//                       },
//                       child: const Text(
//                         'Đăng Ký',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 15,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )),
//     );
//   }
// }

// DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
//       value: item,
//       child: Text(
//         item,
//         style: const TextStyle(
//           fontSize: 15,
//         ),
//       ),
//     );
// ignore_for_file: unnecessary_const

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
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Thông tin tài khoản',
                    style: TextStyle(color: Color(0xff3515FA), fontSize: 20.0),
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
                  child:  TextField(
                    keyboardType: TextInputType.emailAddress,
                    style:const TextStyle(color: Colors.black87),
                    controller: emailController,
                    decoration:const InputDecoration(
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
                  child: TextField(
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
                  child: TextField(
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
                      borderRadius: const BorderRadius.all(Radius.circular(4))),
                  // padding:
                  //     const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
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
                  child:  TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.black87),
                    decoration:const InputDecoration(
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
                      primary: const Color(0xff3515FA),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fixedSize: const Size(300, 10),
                    ),
                    onPressed: () {
                     register(emailController.text,passwordController.text,hoTenController.text,phoneController.text,sex,context);
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
