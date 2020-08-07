import 'package:flutter/material.dart';
import 'package:mmdate/mmdate.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    MMDate mmdate = new MMDate();
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text(mmdate.day()),
          ),
        ),
      ),
    );
  }
}