import 'package:flutter/material.dart';


class Nav2 extends StatefulWidget {
  const Nav2({super.key});

  @override
  State<Nav2> createState() => _Nav2State();
}

class _Nav2State extends State<Nav2> {

   var myItems = [
     {'Name': 'Abjajul','age':30,'City':'Dhaka'},
     {'Name': 'Arafat','age':23,'City':'Rangpur'},
     {'Name': 'Riad','age':20,'City':'Jaldhaka'},
     {'Name': 'Rifat','age':19,'City':'Nilphamari'},
     {'Name': 'Forhat','age':15,'City':'Dhaka'},
     {'Name': 'Zihat','age':12,'City':'Rangpur'},
     {'Name': 'Mithila','age':21,'City':'Dhaka'},
     {'Name': 'Maliha','age':21,'City':'Dimla'},
     {'Name': 'Abjajul','age':30,'City':'Dhaka'},
     {'Name': 'Zihad','age':12,'City':'Nilphamari'},
     {'Name': 'Farhat','age':15,'City':'Dhaka'},

   ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Nav 2'),
      ),
      body: ListView.builder(
          itemCount: myItems.length,
          itemBuilder: (context,index){
        return GestureDetector(
          onTap: (){
        
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height:60,
              child: Column(
                children: [
                 Text('${myItems[index]['Name']}'),
                  Text('${myItems[index]['City']}'),
                  Text('${myItems[index]['age']}'),
                ],
              ),
              color: Colors.amber,
            ),
          ),
        );
      }),
    );
  }
}
