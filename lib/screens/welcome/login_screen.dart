import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TrangDangNhap extends StatefulWidget {
  const TrangDangNhap({Key? key}) : super(key: key);

  @override
  _TrangDangNhapState createState() => _TrangDangNhapState();
}

class _TrangDangNhapState extends State<TrangDangNhap> {
  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Align(
            child: Text(
              'Đăng nhập',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            alignment: Alignment.center,
          ),
          backgroundColor: Colors.white,
          elevation: 2,
        ),
        body: SingleChildScrollView(
          //mainAxisAlignment: MainAxisAlignment.center,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/img/icon/KTX-logo.png',
                width: 300,
                height: 150,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                child: const TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      color: Colors.black87),
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff2D3132),
                      ),
                      hintText: 'Tài khoản',
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                child: TextField(
                  obscureText: _secureText,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      contentPadding: const EdgeInsets.only(top: 14),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xff2D3132),
                      ),
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
                      hintText: 'Mật khẩu',
                      hintStyle: const TextStyle(color: Colors.black38)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text("Đăng nhập"),
                  onPressed: () {
                    Navigator.restorablePopAndPushNamed(
                        context, '/manhinhchinh');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff3515FA),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/nhapemail');
                },
                child: const Text('Quên mật khẩu',
                    style: TextStyle(
                        color: Color(0xff3515FA), fontWeight: FontWeight.w300)),
              ),
              const SizedBox(
                height: 20,
              ),
              //  Row(
              //    mainAxisAlignment: MainAxisAlignment.center,
              //    children: <Widget>[
              //     const Text("Bạn chưa có tài khoản?"),
              //     TextButton(onPressed: (){Navigator.pushNamed(context, '/taikhoan');},
              //     child:  const Text('Đăng ký', style: TextStyle(color: Color(0xff3515FA))),)
              //     ],),
              RichText(
                text: TextSpan(
                    text: 'Bạn chưa có tài khoản?',
                    style: const TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Đăng ký',
                          style: const TextStyle(color: Color(0xff3515FA)),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, '/dangky');
                            })
                    ]),
              ),
              const SizedBox(height: 10),
              const Text('Hoặc', style: TextStyle(color: Color(0xffED0000))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        'assets/img/icon/fb.png',
                        height: 50,
                        width: 50,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        'assets/img/icon/google.png',
                        height: 50,
                        width: 50,
                      ))
                ],
              ),
              const SizedBox(
                height: 110,
              ),
              const Text('Hotline : 123456789',
                  style: TextStyle(
                      color: Color(0xff000000), fontWeight: FontWeight.w900)),
            ],
          ),
        ),
      ),
    );
  }
}
