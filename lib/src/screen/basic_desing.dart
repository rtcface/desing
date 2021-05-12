import 'package:flutter/material.dart';


class BasicDesingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
              children: [
          Column(children: [
          //Imagen
          Image(image: AssetImage('assets/img/lands.jpg'),),
          //titulo
          Title(),
          //seccion de botones
          Botones(),
          //Descripcion 
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Aliquip deserunt ut enim non nisi non Lorem. Proident id veniam quis proident consequat id dolore cupidatat dolor cupidatat. Occaecat dolore quis est in exercitation consectetur et eu pariatur ad nostrud tempor ex magna. Minim ut tempor cillum nostrud occaecat dolore non proident quis aliquip consectetur. Exercitation magna fugiat sint enim dolor est fugiat excepteur. Id reprehenderit laborum fugiat aliquip commodo dolor quis est labore Lorem ullamco enim.'))
        ],),
      ])
   );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('La Vista Es Maravillosa', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Tlaxcala', style: TextStyle(color: Colors.black45),),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red,),
          Text('41')
        ],),
    );
  }
}

class Botones extends StatelessWidget {
  const Botones({
    Key? key,     
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BotonIcon(icon: Icons.call,text: 'Call',),          
          BotonIcon(icon: Icons.arrow_drop_up,text: 'Routes',),
          BotonIcon(icon: Icons.share,text: 'Share',)
        ],),
    );
  }
}

class BotonIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const BotonIcon({
    Key? key, 
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(this.icon, color: Colors.blue,size: 30.0,),
        Text(this.text, style: TextStyle(color: Colors.blue),)
      ],
    );
  }
}