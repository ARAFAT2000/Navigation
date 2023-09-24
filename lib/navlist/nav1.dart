import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
   Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final name =[
    'Abjajul',
    'Arafat',
    'Riad',
    'Rifat',
    'Farhat',
    'Zihad',
    'Abjajul',
    'Arafat',
    'Riad',
    'Rifat',
    'Farhat',
    'Zihad',
  ];

  mySnackBar(context,mgs){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(mgs)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Nav 1 '),
      ),
      body: ListView.builder(
          itemCount:name.length,
          itemBuilder: (BuildContext,index){
        return GestureDetector(
          onTap: (){
            mySnackBar(context,name[index],);
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 35,
              color: Colors.green,
              child: Center(child: Text('${name[index]}')),
            ),
          ),
        );
      }),
    );
  }
}
