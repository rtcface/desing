import 'package:desing/src/screen/home_menu.dart';
import 'package:desing/src/screen/home_screen.dart';
import 'package:desing/src/screen/scroll_desing.dart';
import 'package:flutter/material.dart';

import 'package:desing/src/screen/basic_desing.dart';


Map<String,WidgetBuilder> getAppicationRouts()
{
return <String,WidgetBuilder>{
        '/'     : (BuildContext context) => HomeMenu(),
        'basic_desing'     : (BuildContext context) => BasicDesingScreen(),
        'scroll_desing'     : (BuildContext context) => ScrollScreen(), 
        'home_screen'     : (BuildContext context) => HomeScreen(),        
      };
}