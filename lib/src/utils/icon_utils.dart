import 'package:flutter/material.dart';



final _icons=<String,IconData> {

'photo_size_select_actual_sharp':Icons.photo_size_select_actual_sharp,
'scatter_plot_outlined'         :Icons.scatter_plot_outlined,
'home_work_outlined'            :Icons.home_work_outlined,
'tag_faces_rounded'             :Icons.tag_faces_rounded,
'input'                         :Icons.input_sharp,
'slider'                        :Icons.slideshow,
'list'                          :Icons.list_alt,
};


Icon getIcon(String nombreIcono)
{
  return Icon( _icons[nombreIcono], color: Colors.blue,);
}