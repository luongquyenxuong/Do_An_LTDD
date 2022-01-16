import 'package:flutter/material.dart';

 
 class CommentScreen extends StatefulWidget {
   const CommentScreen({ Key? key }) : super(key: key);
 
   @override
   _CommentScreenState createState() => _CommentScreenState();
 }
 
 
 class _CommentScreenState extends State<CommentScreen> {
   @override
   Widget build(BuildContext context) {
     return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Đánh giá'),
          centerTitle: true,
          backgroundColor: const Color(0xff202d59),
          iconTheme: const IconThemeData(color: Colors.white),
          leading: IconButton(
              onPressed: () {
                // Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black, blurRadius: 0.5),
                  ],
                ),
                padding: const EdgeInsets.all(10),
                child: const Center(
                  child: Text(
                    'Tên sản phẩm',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffD9D9D9),
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  autocorrect: false,
                  enableSuggestions: false,
                  //autofocus: true,
                  maxLines: 10,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Vui lòng viết đánh giá cho sản phẩm..',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    border: InputBorder.none,
                    filled: true,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: InkWell(
          onTap: () {},
          child: Container(
              width: 400,
              height: 50,
              color: Colors.black,
              child: const Center(
                child: Text('Đăng',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              )),
        ),
      ),
    );
   }
 }