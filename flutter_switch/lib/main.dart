import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
   bool isSwitched4 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 238, 215),
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Filters'),
          leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.check),
            )
          ],
        ),
        body: ListView(
          
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.center,
              child: Text('Adjust your meal selection!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          ),
          
          ListTile(
            title: Text('Gluten-Free'),
            subtitle: Text('only iclude Gluten-Free meals'),
            trailing: Switch(
          value: isSwitched1,
          onChanged: (value) {
            setState(() {
              isSwitched1 = value;
             
            });
          },
          activeTrackColor: Colors.yellow.shade600,
          activeColor: Colors.yellow.shade800,),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Vegetarian'),
            subtitle: Text('only iclude Vegetarian meals'),
            trailing: Switch(
          value: isSwitched2,
          onChanged: (value) {
            setState(() {
              isSwitched2 = value;
            
            });
          },
          activeTrackColor: Colors.yellow.shade600,
          activeColor: Colors.yellow.shade800,),
            onTap: () {
    
            },
          ),
           ListTile(
            title: Text('Lactose-Free'),
            subtitle: Text('only iclude Lactose-Free meals'),
            trailing: Switch(
          value: isSwitched3,
          onChanged: (value) {
            setState(() {
              isSwitched3 = value;
            
            });
          },
          activeTrackColor: Colors.yellow.shade600,
          activeColor: Colors.yellow.shade800,),
            onTap: () {
    
            },
          ),
          ListTile(
            title: Text('Vegan'),
            subtitle: Text('Only include Vegan meals'),
            trailing: Switch(
          value: isSwitched4,
          onChanged: (value) {
            setState(() {
              isSwitched4 = value;
            });
          },
          activeTrackColor: Colors.yellow.shade600,
          activeColor: Colors.yellow.shade800,),
            onTap: () {
             
            },
          ),
        ],
      ),
    );
  }
}