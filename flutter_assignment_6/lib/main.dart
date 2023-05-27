import 'package:flutter/material.dart';
import 'package:flutter_assignment_6/login_page.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const LoginPage(),
    );
  }
}

