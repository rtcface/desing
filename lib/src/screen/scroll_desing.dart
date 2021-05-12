import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {
final boxDecoration = BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter, 
            stops: [0.5,0.5],
            colors: [
              Color(0xff5ee8c5),
              Color(0xff30bad6)]
             )
        );
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2()
          ],),
      )
   );
  }
}

class Page1 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //background
        Background(),
        // Main Content-Column
        MainContent()
      ],
      );
  }
}

class Background extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Color(0xff30BAD6),
      alignment: Alignment.topCenter,
      child:Image(image: AssetImage('assets/img/scroll-1.png'),)
    );
  }
}

class MainContent extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontSize: 50, fontWeight:FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [  
        SizedBox(height: 50,),
        Text('11°',style: textStyle,),
        Text('Domingo', style: textStyle,),
        Expanded(child: Container()),
        Icon(Icons.keyboard_arrow_down,size: 100, color: Colors.white,)
      ],),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){},
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 30),),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098fa),
            shape: StadiumBorder() ),

          ),
      ),
    );
  }
}