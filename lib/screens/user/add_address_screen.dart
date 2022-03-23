import 'package:app_thoi_trang/network/network_request.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddressScreen extends StatefulWidget {
  int idKhachHang;
   AddressScreen({Key? key,required this.idKhachHang}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _AddressScreenState createState() => _AddressScreenState(idKhachHang);
}

class _AddressScreenState extends State<AddressScreen> {
  var tenController = TextEditingController();
  var tenduongController = TextEditingController();
  var phuongController = TextEditingController();
  var quanController = TextEditingController();
  var thanhphoController = TextEditingController();
  var sdtController = TextEditingController();
int idKhachHang;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

_AddressScreenState(this.idKhachHang);
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
              onPressed: ()async {
                if(formkey.currentState!.validate()){ 
  if(await insertDiaChi(idKhachHang, tenController.text, tenduongController.text, phuongController.text, quanController.text, thanhphoController.text, sdtController.text, context)==true)
                {
                  ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Lưu thông tin thành công')));
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
                        controller: tenController,
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
                        controller: sdtController,
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
