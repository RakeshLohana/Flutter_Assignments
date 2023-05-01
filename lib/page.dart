import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red
                    ),
                    child: Center(
                      child: Text('20%',style: TextStyle(fontSize: 25),),
                    ),

                  ),
                ),
               Expanded(
                 flex: 8,
                 child: Container(
                   decoration: BoxDecoration(
                       color: Colors.green
                   ),
                   child: Center(child: Text('80%',style: TextStyle(fontSize: 25),),),
                 ),
               ),
              ],
            ),

            // child: Column(
            //   children: [
            //     Container (
            //        height: 20,
            //       decoration: const BoxDecoration(
            //         color: Colors.green
            //       ),

            //     child:const Center(
            //       child: Text("20%",style: TextStyle(color: Colors.black,fontSize: 25),),
            //     ),
            //     ),
            //      Container (
            //        height: 20,
            //       decoration: const BoxDecoration(
            //         color: Colors.green
            //       ),

            //     child: const Center(
            //       child: Text("20%",style: TextStyle(color: Colors.black,fontSize: 25),),
            //     ),
            //     )

            //   ],

          ),
    );
  }
}