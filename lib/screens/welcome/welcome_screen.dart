import 'package:flutter/material.dart';

class Welcome extends StatefulWidget{
  const Welcome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => WelcomeScreen();
}

class WelcomeScreen extends State<Welcome>{

  @override
  Widget build(BuildContext context){
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 150,),
            Container(
              alignment: Alignment.center,
              child: Image.asset('assets/img/icon/KTX-logo.png'),
            ),
            // const Text(
            //   'Welcome',
            //    style:TextStyle(
            //       fontSize: 35,  
            // ),),
            const SizedBox(height: 70,),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
              
              onPressed:() {
                Navigator.restorablePopAndPushNamed(context, '/dangnhap');},
              child:const Text("Đăng nhập"),
              style: ElevatedButton.styleFrom(
                  primary:const Color(0xff3515FA),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),),
               ), 
             ),
            ),
             ElevatedButton(
              onPressed:() {
                Navigator.pushNamed(context, '/dangky');},
              child:const Text("  Đăng ký  "),
              style: ElevatedButton.styleFrom(
                  primary:const Color(0xffe42222),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),),
               ), 
             ),
             const Spacer(flex: 1),
             const Text('Hotline : 123456789',style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w900)),

          ],
        ),
      ),
    );
  }
  
}

