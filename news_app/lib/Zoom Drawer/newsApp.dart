


import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:news_app/data/appData.dart';
import 'package:news_app/model/baseModel.dart';




class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
    bool isLightMode=true;

   void toggleLightMode() {
    setState(() {
      isLightMode = !isLightMode;
    });
  }

 

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
    
        appBar: AppBar(
         leading: IconButton(
          icon: Icon(Icons.menu_outlined),
          onPressed: (){
             ZoomDrawer.of(context)!.toggle();
          },
          ),
          title: Text('Top HeadLines',style:  Theme.of(context).textTheme.titleLarge),
          actions:  [
             Padding(
              padding: EdgeInsets.only(right:18 ),
              child: InkWell(
                onTap: (){
                  toggleLightMode();
                 
                },
                child: isLightMode?Icon(Icons.light_mode_outlined) :Icon(Icons.light_mode,)),
            )

        ]),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            

            
            itemCount: appData.length,
            itemBuilder: (context,index){
                BaseModel current=appData[index];

              return Container(
                margin: EdgeInsets.symmetric(vertical: 10),
              
                
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(15)
        
                ),
                child:Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            
                            image: NetworkImage(current.ImageUrl),

                            ),
                          borderRadius: BorderRadius.circular(8),
                          
                        ),
                       ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          height:40,
                          constraints: BoxConstraints(minWidth: 80,maxWidth: 150,),
                          child: Center(child: Text(current.source,)),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30)
                                          
                          ),
                        
                          
                        ),
                      ),
                        Text(current.description, style:Theme.of(context).textTheme.titleSmall)
                     
                        
                  ],),
                )
        
              );
            }
          ),
        ),

    ));
  }
}