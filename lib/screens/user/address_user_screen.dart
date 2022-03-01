//import 'dart:html';

//import 'package:flutter/cupertino.dart';
import 'package:app_thoi_trang/models/address_user.dart';
import 'package:app_thoi_trang/models/user.dart';
import 'package:app_thoi_trang/network/network_request.dart';
import 'package:app_thoi_trang/screens/user/add_address_screen.dart';
import 'package:app_thoi_trang/screens/user/change_address_screen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class AddressUserScreen extends StatefulWidget {
  User user;
  bool check;
  int dc;
  AddressUserScreen({Key? key, required this.user,required this.check,required this.dc}) : super(key: key);
  @override
  // ignore: unnecessary_this, no_logic_in_create_state
  _MyAddressUser createState() => _MyAddressUser(this.user,this.check,this.dc);
}

class _MyAddressUser extends State<AddressUserScreen> {
  User? user;
  bool check;
  int dc;
  Address? address;
onGoBack(dynamic value) {
    setState(() {});
  }
  _MyAddressUser(this.user,this.check,this.dc);
  int? idDC;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xffD9D9D9),
        appBar: AppBar(
          centerTitle: true,
          title:const Text(
            'Địa Chỉ',
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context,dc);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          // actions: [
          //   TextButton(
          //       onPressed: () {},
          //       child: const Text(
          //         '  ',
          //       ))
          // ],
          backgroundColor: Colors.white,
          elevation: 2,
        ),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: <Widget>[
              
              FutureBuilder<List<Address>?>(
                future: apidsDiaChiKH(user?.id),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snapshot.data?.length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            dc = snapshot.data![index].id!; 
                                        
                            print(dc);
                            if(check==true){
                              Navigator.pop(context,dc);
                            }
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            padding: const EdgeInsets.all(10),
                            color: Colors.white,
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Icon(
                                  Icons.room,
                                  color: Colors.red,
                                ),
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: snapshot.data![index].hoTen,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      )),
                                  // const TextSpan(
                                  //     text: ' [Mặc định]\n',
                                  //     style: TextStyle(
                                  //         color: Colors.red, fontSize: 15)),
                                  const TextSpan(text: '\n'),
                                  TextSpan(
                                      text: snapshot.data![index].sDT! + '\n',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      )),
                                  TextSpan(
                                      text: snapshot.data![index].diaChi!,
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 13)),
                                ])),
                                const Spacer(),
                                InkWell(
                                  onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeAddressScreen(address:snapshot.data![index]))).then(onGoBack);
                                  },
                                  child: const Text('Sửa'))
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                  return Container();
                },
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressScreen(idKhachHang:user!.id!))).then(onGoBack);
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Row(
                    children: const <Widget>[
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
