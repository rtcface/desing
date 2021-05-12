import 'package:flutter/material.dart';
import 'dart:ui';

class CardTable extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children:[
            _SingleCardBackground(iconData:Icons.widgets_outlined,color: Colors.blueAccent,text: 'General',),
            _SingleCardBackground(iconData:Icons.directions_bus_outlined,color: Colors.blue,text: 'Transporte',),       
          ]
        ),
        TableRow(
          children:[
            _SingleCardBackground(iconData:Icons.shopping_bag_rounded,color:Colors.purpleAccent,text: 'Tienda',),
            _SingleCardBackground(iconData:Icons.fact_check_outlined,color: Colors.orangeAccent,text: 'Facturas',),       
          ]
        ),TableRow(
          children:[
            _SingleCardBackground(iconData:Icons.movie_outlined,color: Colors.purple,text: 'Entretenimiento',),
            _SingleCardBackground(iconData:Icons.shopping_bag, color: Colors.orange,text: 'Comestibles',),       
          ]
        ),TableRow(
          children:[
            _SingleCardBackground(iconData:Icons.widgets_outlined,color: Colors.grey,text: 'Prueba',),
            _SingleCardBackground(iconData:Icons.widgets_outlined,color: Colors.grey,text: 'Prueba',),       
          ]
        ),
        TableRow(
          children:[
            _SingleCardBackground(iconData:Icons.widgets_outlined,color: Colors.grey,text: 'Prueba',),
            _SingleCardBackground(iconData:Icons.widgets_outlined,color: Colors.grey,text: 'Prueba',),       
          ]
        )
      ],
    );
  }
}

class _SingleCardBackground extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color color;
   _SingleCardBackground({
    Key? key,
   required this.iconData,
   required this.text,
   required this.color
  }) : super(key: key);

  final boxDecoration = BoxDecoration(
      color: Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(20),
    );


  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: this.color,
          child: Icon(this.iconData,size:34,color: Colors.white,),
          radius: 30,
          ),
          SizedBox(height: 10,),
        Text(this.text , style: TextStyle(color: this.color, fontSize: 18 )),
      ],
    );
    return _CardBackground(child: column, boxdecoration: boxDecoration);
  }
}


class _CardBackground extends StatelessWidget {
  final Widget child;
  final BoxDecoration boxdecoration;
  const _CardBackground({
    Key? key,
    required this.child,
    required this.boxdecoration
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: this.boxdecoration,
            child: this.child
          ),
        ),
      ),
    );
  }
}