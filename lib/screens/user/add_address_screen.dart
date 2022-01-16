import 'package:flutter/material.dart';

class ChangeAddressScreen extends StatefulWidget {
  const ChangeAddressScreen({Key? key}) : super(key: key);

  @override
  _ChangeAddressScreenState createState() => _ChangeAddressScreenState();
}

class _ChangeAddressScreenState extends State<ChangeAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xffD9D9D9),
        appBar: AppBar(
          title: const Text('Thêm địa chỉ mới',
              style: TextStyle(color: Colors.black)),
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
          actions: [
            TextButton(
              onPressed: () {},
              child:const Text(
                'Lưu',
                style: TextStyle(color: Color(0xff0500FF), fontSize: 17),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 20,),
              Container(
                  color: Colors.white,
                  child:const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: "Tên "),
                    ),
                  )),
                 const SizedBox(height: 20,),
              Container(
                  color: Colors.white,
                  child:const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child:  TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: "Số đường / Tên đường"),
                    ),
                  )),
                 const SizedBox(height: 20,),
              Container(
                  color: Colors.white,
                  child:const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: "Phường / Xã"),
                    ),
                  )),
                 const SizedBox(height: 20,),
              Container(
                  color: Colors.white,
                  child:const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: "Quận / Huyện"),
                    ),
                  )),
                  const SizedBox(height: 20,),
              Container(
                //width: 20,
                  color: Colors.white,
                  child:const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: TextField(
                      //obscuringCharacter: '.',
                      decoration: InputDecoration.collapsed(
                          hintText: "Tỉnh / Thành Phố"),
                    ),
                  )),
                  const SizedBox(height: 20,),
              Container(
                  color: Colors.white,
                  child:const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: "SĐT"),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
