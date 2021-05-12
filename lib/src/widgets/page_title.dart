import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('My app', style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold, color: Colors.white)),
              SizedBox(height: 10,),
              Text('Esta es una prueba de la descripcion texto texto texto',style: TextStyle(fontSize: 18, color: Colors.white)),
              
            ],
          ),
      ),
    );
  }
}