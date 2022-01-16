// ignore_for_file: unnecessary_const, must_be_immutable

//import 'dart:html';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class changepassscreen extends StatefulWidget {
  const changepassscreen({Key? key}) : super(key: key);



  @override
  _MyChangePass createState() => _MyChangePass();
}

class _MyChangePass extends State<changepassscreen> {
  bool _secureText = true;
  
  String? value;
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
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
              actions: [
                 TextButton(
              onPressed: () {},
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
                    child: TextField(
                      keyboardType: TextInputType.text,
                    
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
                    child: TextField(
                      keyboardType: TextInputType.number,
                    
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
                    child: TextField(
                      keyboardType: TextInputType.text,
                    
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