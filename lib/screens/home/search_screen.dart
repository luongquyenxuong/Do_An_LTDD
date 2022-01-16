import 'package:flutter/material.dart';

import '../wdg/wdg_product.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

 



  @override
  _SeachState createState() => _SeachState();
}

class _SeachState extends State<SearchScreen> {
  

  @override
  Widget build(BuildContext context) {
    //double _height = MediaQuery.of(context).size.height;
    return GestureDetector(
       onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor:const Color(0xffD9D9D9),
        appBar:AppBar(
          automaticallyImplyLeading: false,
  
           backgroundColor:const Color(0xff202d59),
          title:SizedBox(
        width: double.infinity,
        height: 40,
       
        child: Center(
          child: Container(
            
            decoration: BoxDecoration(
              color:const Color(0xffC4C4C4),
               border: Border.all( color: Colors.black, width: 0.3),
              borderRadius:BorderRadius.circular(10)
            ),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon:const Icon(Icons.search,color: Colors.black,),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear,color: Colors.black,),
                    onPressed: () {
                      /* Clear the search field */
                    },
                  ),
                  hintText: 'Tìm kiếm...',
                  border: InputBorder.none),
            ),
          ),
        ),
      ),
          //centerTitle: true,
          //iconTheme:const IconThemeData(color: Colors.red),
          leading: IconButton(
              onPressed: ()  {
               Navigator.pop(context);
            },
            icon:const Icon(Icons.arrow_back_ios,color: Colors.white,), 
          ),
        ) ,
        body: ListView(
          children:const [
           AllProducts()
          ],
        ),
        ),
      
    );
  }
}