import 'package:flutter/material.dart';
import 'package:navigation/navlist/helpernav3.dart';

import 'displaynav3.dart';


class Nav3 extends StatefulWidget {
  const Nav3({super.key});

  @override
  State<Nav3> createState() => _Nav3State();
}

class _Nav3State extends State<Nav3> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nav3 '),
      ),
      body: ListView.builder(
          itemCount:todos.length,
          itemBuilder: (BuildContext,index){
            return GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(todo: todos[index]),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 35,
                  color: Colors.green,
                  child: Center(child: Text(todos[index].title)),
                ),
              ),
            );
          }),
    );
  }
}
