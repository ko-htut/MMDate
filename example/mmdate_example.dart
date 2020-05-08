import 'package:flutter/material.dart';
import '../lib/src/mmdate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MMDate mmdate = MMDate();
    String year = mmdate.year();
    String date = mmdate.now();
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Text('Myanar $year'),
                Text('Myanar $date'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
