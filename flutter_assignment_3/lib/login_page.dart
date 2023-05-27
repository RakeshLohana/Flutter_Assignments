import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('Rakesh Kumar'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.blue,
                child: Center(
                  child:Text('CONSTANT 3') ),
              ),
              Container(
                height: 150,
                width: 150,
                color: const Color.fromARGB(255, 31, 128, 34),
                child: Center(
                  child:Text('CONSTANT 4') ),
              )
            ],
            
          ),
           Row(
            children: [
              Container(
                height: 150,
                width: 150,
                color: Color.fromARGB(255, 148, 30, 169),
                child: Center(
                  child:Text('CONSTANT 5') ),
              ),
              Container(
                height: 150,
                width: 150,
                color: const Color.fromARGB(255, 87, 167, 232),
                child: Center(
                  child:Text('CONSTANT 6') ),
              )
            ],
            
          ),

          Row(children: [
             Expanded(
               child: Container(
                  height: 100,
                  color: Colors.white,
                  child: Center(
                    child:Text('DYNAMIC 1') ),
                ),
             ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Color.fromARGB(255, 225, 188, 233),
                  child: Center(
                    child:Text('DYNAMIC 2') ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                
                  color: Color.fromARGB(255, 233, 229, 229),
                  child: Center(
                    child:Text('DYNAMIC 3') ),
                ),
              ),
              
            

          ],),
           Row(children: [
             Expanded(
               child: Container(
                height: 100,
                  color: Colors.purple.shade200,
                  child: Center(
                
                    child:Text('DYNAMIC 4') ),
                ),
             ),
              Expanded(
                child: Container(
                   height: 100,
                  color: const Color.fromARGB(255, 33, 214, 39),
                  child: Center(
                    child:Text('DYNAMIC 5') ),
                ),
              ),
              Expanded(
                child: Container(
                   height: 100,
                  color: Color.fromRGBO(238, 241, 224, 1),
                  child: Center(
                    child:Text('DYNAMIC 7') ),
                ),
              ),
              
            

          ],)

        ],)
    );
  }
}