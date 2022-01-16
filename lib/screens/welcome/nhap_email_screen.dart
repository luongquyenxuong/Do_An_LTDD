import 'package:flutter/material.dart';

class InputEmailScreen extends StatefulWidget {
  const InputEmailScreen({Key? key}) : super(key: key);

  

  @override
  _State createState() => _State();
}

class _State extends State<InputEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white,
          title:const Text('Quên mật khẩu',style: TextStyle(color: Colors.black),),
          iconTheme:const IconThemeData(
            color: Colors.black
            
          ),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:const Icon(Icons.arrow_back_ios,color: Colors.black,),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
           keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Center(child: Image.asset('assets/img/icon/KTX-logo.png',width: 300,height: 150,)),
             const Text('Nhập email',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 30),),
             const SizedBox(height: 10,),
             const Text('Vui lòng nhập email để xác nhận',textAlign: TextAlign.center,),
             const SizedBox(height: 20,),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                child: const TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //contentPadding: EdgeInsets.only(top: 14),
                      // prefixIcon: Icon(
                      //   Icons.person,
                      //   color: Color(0xff2D3132),
                      // ),
                      labelText: 'Email',
                      hintText: 'Nhập email',
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
               Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:const Color(0xff3515FA),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),),
                      fixedSize: const Size(300, 10),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/quenmatkhau');
                    },
                    child: const Text(
                      'Tiếp tục',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}