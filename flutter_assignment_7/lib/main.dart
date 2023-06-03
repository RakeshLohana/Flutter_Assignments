import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
      ),
      home: OnBoardingScreen()    );
  }
}


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  late PageController _pageController;
  int _pageIndex=0;

  setColor(){
    Color backGroungColor;
  if(_pageIndex==0){
    backGroungColor=Color.fromARGB(255, 223, 214, 211);
    return backGroungColor;
  }
  if(_pageIndex==1){
    backGroungColor=Color.fromARGB(255, 240, 218, 204);
    return backGroungColor;
  }
  else{
    backGroungColor=Color.fromARGB(255, 205, 237, 205);
    return backGroungColor;
    

  }
}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController=PageController(initialPage: 0);
    
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: setColor(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
        
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (index){
                    setState(() {
                      _pageIndex=index;
                    });
        
                  },
                  itemCount: data.length,
                  controller: _pageController,
                  itemBuilder:(context,index){
                    
                   return ReusableContent(
                    description: data[index].description,
                     image:data[index].image,
                      text: data[index].text);}
                ),
              ),
             Padding(
               padding: const EdgeInsets.only(bottom:20.0),
               child: Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
               ...List.generate(data.length,(index)=>Padding(
                 padding: const EdgeInsets.only(right: 10),
                 child: DotIndicator(isActive: index==_pageIndex,),
               )),
                ],
               ),
             ),
             SizedBox(height: 2,),
              
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReusableButton(
                  pageController: _pageController,
                  colorBackground: Color.fromARGB(255, 224, 224, 224), 
                  onTap: () {
                     _pageController.previousPage(duration: Duration(milliseconds: 300), curve: Curves.ease); }, 
                  text: 'Previous', 
                  colorText: Colors.black,),
               
                   ReusableButton(pageController: _pageController, text: 'Next', colorText: Colors.white, colorBackground: Colors.black, onTap:(){
                     _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
                   } )
             
              ],
            )
              
              
          ]),
        ),
      ),
    );
  }
}

class ReusableButton extends StatelessWidget {
  const ReusableButton({
    super.key,
    required PageController pageController, 
    required this.text,
    required this.colorText,
    required this.colorBackground,
    required this.onTap,


  }) : _pageController = pageController;

  final PageController _pageController;
  final String text;
 final Color colorText;
 final Color colorBackground;
 final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
        
          height: MediaQuery.of(context).size.height*0.07,
          width: MediaQuery.of(context).size.width*0.2,
        
          child:Center(child: Text(text,style: TextStyle(color:colorText,fontWeight: FontWeight.bold),)) ,
          
          decoration: BoxDecoration(
            color: colorBackground,
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}



class DotIndicator extends StatelessWidget {
  final bool isActive;
 
    const DotIndicator({ super.key,  this.isActive=false, } );
  

  @override
  Widget build(BuildContext context) {
   
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 18:8 ,
      decoration: BoxDecoration(
        color: isActive? Colors.black: Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}


class OnBoard{
   final String image;
  final String text;
  final String description;

  OnBoard({required this.description,required this.image,required this.text});

}

final List<OnBoard> data=[
  OnBoard(description: 'Remember to keep track of your professional accomplishments', image:'assets/office.jpeg' , text: 'Track your work and get the result'),
  OnBoard(description: 'But Understanding the Contributions our collegues make to our teams and companies ', image:'assets/bulb.jpeg' , text: 'Stay organized with team'),
  OnBoard(description: 'Remember to keep track of your professional accomplishments', image:'assets/laptop.png' , text: 'Take control of notifications, collabrate live on your own time')
];



class ReusableContent extends StatelessWidget {
  final String image;
  final String text;
  final String description;
   const ReusableContent({super.key,required this.description,required this.image,required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundColor: Colors.transparent,
            backgroundImage:AssetImage(image,) ,
    
            ),
          SizedBox(height: 17,),
          Text(text,textAlign:TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          SizedBox(height: 17,),
          Text(description,textAlign:TextAlign.center,style: TextStyle(fontSize: 20)),
      
        ],
      ),
    );
  }
}



