//import 'dart:html';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class addressuserscreen extends StatefulWidget {
  const addressuserscreen({Key? key}) : super(key: key);

  @override
  _MyAddressUser createState() => _MyAddressUser();
}

class _MyAddressUser extends State<addressuserscreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor:const Color(0xffD9D9D9),
        appBar: AppBar(
          title: const Align(
            child: Text(
              'Địa Chỉ',
              style: TextStyle(
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  '  ',
                ))
          ],
          backgroundColor: Colors.white,
          elevation: 2,
        ),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: 'Võ Hoàng Trình',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          )),
                      TextSpan(
                          text: ' [Mặc định]\n',
                          style: TextStyle(color: Colors.red, fontSize: 15)),
                      TextSpan(text: '\n'),
                      TextSpan(
                          text: '(+84)583310368\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          )),
                      TextSpan(
                          text: 'xã Ân Hảo Đông, huyện Hoài Ân, tỉnh Bình Định',
                          style: TextStyle(color: Colors.black, fontSize: 13)),
                    ])),
                    const Spacer(),
                    const Icon(
                      Icons.room,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: (){
 Navigator.pushNamed(context, '/thaydoidiachi');
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Row(
                    children:const <Widget>[
                       Text(
                        'Thêm địa chỉ mới',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                       Spacer(),
                      Icon(
                            Icons.add,
                            color: Colors.black,
                          )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
