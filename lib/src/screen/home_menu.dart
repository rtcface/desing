import 'package:desing/src/providers/menu_provider.dart';
import 'package:desing/src/utils/icon_utils.dart';
import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Esquemas de diseño'), ),
      body: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: menuProvider.cargaMainMenu(),
      initialData:[],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) 
      {
        return ListView(
          children: _listaElementos(snapshot.data!,context)
        );
      },
      );
  }

  List<Widget> _listaElementos(List<dynamic> data,BuildContext context) {
    final List<Widget>  opciones =[];
    data.forEach((opt) {
      final widgetTemp=  ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);       
        },
      );     
      opciones..add(widgetTemp)
              ..add(Divider());
    });
    return opciones;
    }




}