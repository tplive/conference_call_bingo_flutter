import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
        home: BingoPage(),

    );
  }
}

class BingoPage extends StatefulWidget {
  @override
  _BingoPageState createState() => _BingoPageState();
}

class _BingoPageState extends State<BingoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('1'),
              Text('2'),
              Text('3'),
              Text('4'),
              Text('5'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('1'),
              Text('2'),
              Text('3'),
              Text('4'),
              Text('5'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('1'),
              Text('2'),
              Text('3'),
              Text('4'),
              Text('5'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('1'),
              Text('2'),
              Text('3'),
              Text('4'),
              Text('5'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('1'),
              Text('2'),
              Text('3'),
              Text('4'),
              Text('5'),
            ],
          ),
        ],
      ),
    );
  }
}


