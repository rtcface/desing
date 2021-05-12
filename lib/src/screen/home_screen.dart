import 'package:flutter/material.dart';

import 'package:desing/src/widgets/background.dart';
import 'package:desing/src/widgets/card_table.dart';
import 'package:desing/src/widgets/custum_botton_navigation.dart';
import 'package:desing/src/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Background(),
          _HomeBody(),
        ],
        ),
        bottomNavigationBar: CustumBottonNavigation(), 
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Titles
          PageTitle(),
          // Cards Talbe
          CardTable() 
        ],
      ),
      );
  }
}