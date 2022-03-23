import 'package:app_thoi_trang/models/address_user.dart';
import 'package:app_thoi_trang/network/network_request.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChangeAddressScreen extends StatefulWidget {
  Address address;

   ChangeAddressScreen({Key? key,required this.address}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _ChangeAddressScreenState createState() => _ChangeAddressScreenState(address);
}

class _ChangeAddressScreenState extends State<ChangeAddressScreen> {
  late String ten= address.hoTen!;
  var tenController = TextEditingController();
  var tenduongController = TextEditingController();
  var phuongController = TextEditingController();
  var quanController = TextEditingController();
  var thanhphoController = TextEditingController();
  late String sdt= address.sDT!;
  var sdtController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  Address address;

_ChangeAddressScreenState(this.address);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xffD9D9D9),
        appBar: AppBar(
          title: const Text('Sửa địa chỉ',
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
              onPressed: ()async {
                if(formkey.currentState!.validate()){
   if(await updateDiaChi(address.id!,address.iDKhachHang!, tenController.text, tenduongController.text, phuongController.text, quanController.text, thanhphoController.text, sdtController.text, context)==true)
                {
                  ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Lưu địa chỉ thành công')));
                  Navigator.pop(context);
                 }
                }
                // ignore: unrelated_type_equality_checks
             
              },
              child: const Text(
                'Lưu',
                style: TextStyle(color: Color(0xff0500FF), fontSize: 17),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Form(
            key: formkey,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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

                        if (!RegExp(r'^[a-z A-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+$').hasMatch(value)) {
                          //allow upper and lower case alphabets and space
                          return "Họ và tên không đúng !";
                        } else {
                          return null;
                        }
                      },
                        onChanged: (_ten) {
                          ten=_ten;
                        },
                        controller: tenController..text=ten,
                        decoration:
                            const InputDecoration.collapsed(hintText: "Tên "),
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
                          sdt=_sdt;
                        },
                        controller: sdtController..text=sdt,
                        decoration:
                            const InputDecoration.collapsed(hintText: "SĐT"),
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
                        controller: tenduongController,
                        decoration: const InputDecoration.collapsed(
                            hintText: "Số đường / Tên đường"),
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
                        controller: phuongController,
                        decoration: const InputDecoration.collapsed(
                            hintText: "Phường / Xã"),
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
                        controller: quanController,
                        decoration: const InputDecoration.collapsed(
                            hintText: "Quận / Huyện"),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    //width: 20,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: TextFormField(
                        //obscuringCharacter: '.',
                        controller: thanhphoController,
                        decoration: const InputDecoration.collapsed(
                            hintText: "Tỉnh / Thành Phố"),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
