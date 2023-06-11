import 'package:flutter/material.dart';
import 'dart:math' as math;



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(
    
  ),
      home:LoginPageNike(),
    );
  }
}

class LoginPageNike extends StatelessWidget {
  const LoginPageNike({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 14, 11),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: -math.pi / 10,
                  child: Image.asset('assets/nike.png',
                  height:150,
                  width: 150,),
                ),
                const Text(
              "Welcome back! You've been missed",
              style: TextStyle(color:Color.fromARGB(255, 215, 121, 19), fontSize: 17),
            ),
            const SizedBox(
              height: 10,
            ),
               const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  label: Text(
                    "Username",
                  ),
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  label: Text(
                    "Password",
                  ),
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                obscureText: true,
              ),
            ),
                SizedBox(height: 20,),
            
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text('Forgot Passwod?',style: TextStyle(decoration:TextDecoration.underline, color: Colors.grey))),
                  SizedBox(height: 20,),
                Container(
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange.shade800
                  ),
                  child: Center(child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 22),)),
                ),
                SizedBox(height: 20,),
            
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        height: 20,
                        color: Colors.white
                        
                      ),
                    ),
                    Text('Or Continue With',style: TextStyle(color: Colors.white)),
                    
                    Expanded(
                      child: Divider(
                        height: 20,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
            
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/google.png',height: 70,width: 100,),
                       VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                       Image.asset('assets/call.png',height: 65,width: 100,),
                            
                    ],
                  ),
                )
            
                
              
                
            ]),
          ),
        ),
      ),
    );
  }
}

