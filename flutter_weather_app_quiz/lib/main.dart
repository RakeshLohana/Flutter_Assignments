import 'package:flutter/material.dart';

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
      theme: ThemeData(
      ),
      home:WeatherUI(),
    );
  }
}

class WeatherUI extends StatelessWidget {
  const WeatherUI({super.key});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 22, 95),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Weather Forecast'),
        actions: [
          Icon(Icons.search_rounded),


      ]),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
      
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.transparent,
              
             ),
             child: const Column(
               children: [
                 Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Today'),
                    Text('Tuesday 10:00 PM'),
                 ]),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('22 C'),
                    Image(image: AssetImage('assets/weather.png',))
                  
                  ],
                  
                 ),
                 Row(
                  children: [
                    Icon(Icons.location_pin),
                    Text('Antakya,Kuchdlyan,Antakya/Hataya...',),
                  ],
                 )
               ],
             ),
            
      
          )
        ]),
      ),
    );
  }
}