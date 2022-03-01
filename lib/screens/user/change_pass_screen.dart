// ignore_for_file: unnecessary_const, must_be_immutable

//import 'dart:html';

import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/network/network_request.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class changepassscreen extends StatefulWidget {
   String password;
   int id;
   User user;
   changepassscreen({Key? key,required this.password,required this.id,required this.user}) : super(key: key);



  @override
  // ignore: no_logic_in_create_state
  _MyChangePass createState() => _MyChangePass(password,id,user);
}

class _MyChangePass extends State<changepassscreen> {
  bool _secureText = true;
   User user;
   int id;
   String password;
  _MyChangePass(this.password,this.id,this.user);
  String? value;


  late String? pass=password;
  var passController = TextEditingController();
  var passNewController = TextEditingController();
  var passconfirmController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xffD9D9D9),
          appBar: AppBar(
            iconTheme:const IconThemeData(color: Colors.black),
            title:const Text(
              'Đổi mật khẩu',
              style: TextStyle(
                color: Colors.black,
              ),
              
            ),
            leading:  IconButton(
              onPressed: () {
                Navigator.pop(context,user);
              },
              icon: const Icon(Icons.arrow_back_ios)),
              actions: [
                 TextButton(
              onPressed: ()async {
                if(pass==passController.text&&passNewController.text==passconfirmController.text){
                   final result= await updatePassword(id,passNewController.text,context);
                   setState(() {
                     user=result;
                   });
                }else if(pass!=passController.text){
                   ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Mật khẩu sai')));
                }else if(passNewController.text!=passconfirmController.text) {
                  ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Mật khẩu xác nhận không đúng')));
                }
              },
              child:const Text(
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
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20,),
               Container(
                 padding:const EdgeInsets.only(top:4),
                   color: Colors.white,
                  child: Padding(
                    padding:const  EdgeInsets.symmetric(horizontal: 10,),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                     controller: passController,
                      style: const TextStyle(color: Colors.black87),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                        //border: const OutlineInputBorder(),
                        //labelText: 'Mật Khẩu',
                        hintText: 'Mật Khẩu',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                        ),
                       
                        //contentPadding: const EdgeInsets.all(10),
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
                      obscureText: _secureText,
                    ),
                  ),
                ),
                  const SizedBox(height: 20,),
               Container(
                 padding:const EdgeInsets.only(top:4),
                   color: Colors.white,
                  child: Padding(
                    padding:const  EdgeInsets.symmetric(horizontal: 10,),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                     controller: passNewController,
                      style: const TextStyle(color: Colors.black87),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                        //border: const OutlineInputBorder(),
                        //labelText: 'Mật Khẩu',
                        hintText: 'Mật khẩu mới',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                        ),
                        //contentPadding: const EdgeInsets.all(10),
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
                      obscureText: _secureText,
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                 padding:const EdgeInsets.only(top:4),
                   color: Colors.white,
                  child: Padding(
                    padding:const  EdgeInsets.symmetric(horizontal: 10,),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                    controller: passconfirmController,
                      style: const TextStyle(color: Colors.black87),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                        //border: const OutlineInputBorder(),
                        //labelText: 'Mật Khẩu',
                        hintText: 'Nhập lại mật khẩu mới',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                        ),
                        //contentPadding: const EdgeInsets.all(10),
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
                      obscureText: _secureText,
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