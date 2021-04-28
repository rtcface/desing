import 'package:flutter/material.dart';

import 'package:desing/src/screen/basic_desing.dart';


Map<String,WidgetBuilder> getAppicationRouts()
{
return <String,WidgetBuilder>{
        'basic_desing'     : (BuildContext context) => BasicDesingScreen(),        
      };
}