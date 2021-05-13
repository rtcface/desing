import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider { 
  
  List <dynamic> options=[];

  Future < List<dynamic> > cargaMainMenu() async {
    final results= await rootBundle.loadString("data/menu_options.json");

    Map resultsMap=json.decode(results);
    options=resultsMap['rutas'];

    return options;
  }
  
}

final menuProvider= new _MenuProvider();

