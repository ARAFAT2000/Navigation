import 'package:flutter/material.dart';

import 'listviewnavigation/datalist/datalist.dart';
import 'listviewnavigation/datascreen/datascreen.dart';
import 'navlist/nav1.dart';
import 'navlist/nav2.dart';
import 'navlist/nav3.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DataScreen(datas:DataList),
    );
  }
}
