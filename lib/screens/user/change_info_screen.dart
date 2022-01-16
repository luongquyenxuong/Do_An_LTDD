// ignore_for_file: unnecessary_const, must_be_immutable

//import 'dart:html';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class changeinfoscreen extends StatefulWidget {
  const changeinfoscreen({Key? key}) : super(key: key);



  @override
  _MyChangeInfo createState() => _MyChangeInfo();
}

class _MyChangeInfo extends State<changeinfoscreen> {
  final items = ['Nam', 'Nữ'];
  String? value;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          backgroundColor:const Color(0xffD9D9D9),
          appBar: AppBar(
            iconTheme:const IconThemeData(color: Colors.black),
            title:const Text(
              'Tài Khoản',
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
                // Container(
                //   padding: const EdgeInsets.only(top: 10),
                // ),\
                const SizedBox(height: 20,),
                 Container(
                  color: Colors.white,
                  child:const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: TextField(
                       keyboardType: TextInputType.name,
                      decoration: InputDecoration.collapsed(
                          hintText: "Tên"),
                    ),
                  )),
                const SizedBox(height: 20,),
                Container(
                   //height: 40,
                   color: Colors.white,
                  // padding:
                  //     const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                    child: DropdownButtonFormField<String>(
                      value: value,
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
                      }),
                    ),
                  ),
                ),
                 const SizedBox(height: 20,),
                Container(
                  color: Colors.white,
                  child:const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: TextField(
                       keyboardType: TextInputType.datetime,
                      decoration: InputDecoration.collapsed(
                          hintText: "Ngày sinh "),
                    ),
                  )),
                const SizedBox(height: 20,),
                Container(
                  color: Colors.white,
                  child:const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: TextField(
                       keyboardType: TextInputType.number,
                      decoration: InputDecoration.collapsed(
                          hintText: "SĐT "),
                    ),
                  )),
                const SizedBox(height: 20,),
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