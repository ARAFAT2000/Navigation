import 'package:flutter/material.dart';
import 'package:navigation/listviewnavigation/datadetailscreen/datadetailscreen.dart';

import '../datalist/datalist.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key,required this.datas});
 final List<Data>datas;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Holder List'),
      ),
      body: ListView.builder(
        itemCount: datas.length,
          itemBuilder: (context,index){
         return Card(
           child: ListTile(
             title: Text(datas[index].name),
             subtitle: Text(datas[index].address),
         onTap: (){
               Navigator.of(context).push(
                   MaterialPageRoute(builder: (context)=>DataDetailScreen(data: datas[index]) ));
         },
           ),
         );
      }),
    );
  }
}
