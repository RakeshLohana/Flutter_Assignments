import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Align(
              alignment: Alignment.bottomCenter,
              
              child: Container(
                child: Text('Copyright login page@ RK Solutions',style: TextStyle(color: Colors.white),),
              ),
            ),
          ),


          Container(
            height: MediaQuery.of(context).size.height*0.7,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 15, 111, 190),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),


              )
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text('Firebase',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
            ),
          ),
          
  
          Center(
            child: Container(
              margin: EdgeInsets.all(40),
              height: MediaQuery.of(context).size.height*0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Text('Login',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                      ),
                      ),
                      
    
                     TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ),
                      ),
                      SizedBox(height: 5,),
                       Align(
                        alignment: Alignment.bottomRight,
                       child: Text('Forgot Password',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold))),
                  
                       SizedBox(height: 40,),
                       Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text("Login",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold),),
                        ),
                       ),
                       SizedBox(height: 10,),
                       Text('-OR-',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold)),
                       SizedBox(height: 10,),
                       CircleAvatar(
                        backgroundColor: Colors.blue,
                        
                         child: IconButton(
                          
                          color: Colors.white,
                          icon: Icon(Icons.call),
                           onPressed: () {  },
                      
                         ),
                       )


                  ],
                ),
              ),

            ),
          )
          
           
        ],
      ),

);}
}
