import 'package:flutter/material.dart';

import '../datalist/datalist.dart';

class DataDetailScreen extends StatelessWidget {
  const DataDetailScreen({super.key,required this.data});
final Data data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.name),
      ),
      body: Column(
        children: [
          Text('${data.address} the code number - '),
          Text('${data.id}')
        ],
      ),
    );
  }
}
