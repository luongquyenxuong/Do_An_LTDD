//import 'dart:html';

//import 'package:flutter/cupertino.dart';
import 'package:app_thoi_trang/models/address_user.dart';
import 'package:app_thoi_trang/network/network_request.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class addressuserscreen extends StatefulWidget {
  final int idKH;
  const addressuserscreen({Key? key, required this.idKH}) : super(key: key);

  @override
  // ignore: unnecessary_this, no_logic_in_create_state
  _MyAddressUser createState() => _MyAddressUser(this.idKH);
}

class _MyAddressUser extends State<addressuserscreen> {
  final int idKH;
  _MyAddressUser(this.idKH);
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
              FutureBuilder<List<Address>?>(
                future: apidsDiaChiKH(idKH),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snapshot.data?.length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                            idDC=snapshot.data![index].id;
                           print(idDC);
                        return Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Row(
                            children: <Widget>[
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
                              const Icon(
                                Icons.room,
                                color: Colors.red,
                              ),
                            ],
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
                  Navigator.pushNamed(context, '/thaydoidiachi');
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
