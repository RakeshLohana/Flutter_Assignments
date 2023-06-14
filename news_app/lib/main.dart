import 'package:flutter/material.dart';
import 'package:news_app/Zoom%20Drawer/HomePage.dart';


void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {


    MyApp({super.key});


  @override
  Widget build(BuildContext context) {

  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:ThemeData.dark(

      ),
  
      
      home:HomePage(),
    );
  }
}


