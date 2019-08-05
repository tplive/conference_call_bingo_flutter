import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final TextStyle cardStyle = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w400,
);

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Conference Call Bingo'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildBingoRow(items: 5, rowNumber: 0),
            buildBingoRow(items: 5, rowNumber: 1),
            buildBingoRow(items: 5, rowNumber: 2),
            buildBingoRow(items: 5, rowNumber: 3),
            buildBingoRow(items: 5, rowNumber: 4),
          ],
        ),
      ),
    );
  }

  Row buildBingoRow({int items, int rowNumber}) {
    List<BingoCard> list = new List();

    int startIndex = items * rowNumber;

    for (var i = 0; i < items; i++) {
      list.add(
        new BingoCard(
          cliches[startIndex + i].text,
          active: cliches[startIndex + i].active,
          onPress: () {
            setState(() {
              if (cliches[startIndex + i].active == true) {
                cliches[startIndex + i].active = false;
              } else {
                cliches[startIndex + i].active = true;
                detectBingo();

              }
            });
          },
        ),
      );
    }

    return Row(
      children: list,
    );
  }

  bool detectBingo() {
    int countActive = 0;

    // Full bingo. Returns true only if all cards are active.
    for (var i = 0; i < cliches.length; i++) {
      if (cliches[i].active == true) {
        countActive++;
      }
    }
    bool bingo = countActive == cliches.length;
    print('Bingo?$bingo');
    return countActive == cliches.length;
  }
}

class BingoCard extends StatelessWidget {
  BingoCard(this.text, {this.active, this.onPress});

  final Function onPress;
  final String text;
  bool active;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            child: Center(
              child: Text(
                text,
                style: cardStyle,
              ),
            ),
            margin: EdgeInsets.all(1.0),
            padding: EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              color: this.active == true ? Colors.green[500] : Colors.grey[900],
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ),
    );
  }
}

class Cliche {
  Cliche({this.text, this.active});

  String text;
  bool active = false;
}

final List<Cliche> cliches = [
  new Cliche(text: 'Hi, who just joined?'),
  new Cliche(text: 'Can you email that to everyone?'),
  new Cliche(text: '___, are you there?'),
  new Cliche(text: 'Uh, ___, you\'re still sharing..'),
  new Cliche(text: 'Hey guys, I have to jump to another call'),
  new Cliche(text: '(sound of someone typing, possibly with a hammer)'),
  new Cliche(text: '(loud, painful echo/feedback'),
  new Cliche(text: '(child or animal noises)'),
  new Cliche(text: 'Hi, can you hear me?'),
  new Cliche(text: '..no, it\'s still loading'),
  new Cliche(text: 'Next slide, please..'),
  new Cliche(text: 'Can everyone go on mute?'),
  new Cliche(text: 'I\'m sorry, I was on mute..'),
  new Cliche(text: '(for overtalkers)\nSorry, go ahead.'),
  new Cliche(text: 'Hello?\nHello!?'),
  new Cliche(text: 'So, (fades out), I can (unintelligible) by (cuts out) ok?'),
  new Cliche(text: 'Sorry I\'m late, <insert lame excuse>'),
  new Cliche(text: 'I have a hard stop at..'),
  new Cliche(text: 'I\'m sorry, you cut out there..'),
  new Cliche(text: 'Can we take this offline?'),
  new Cliche(text: 'I\'ll have to get back to you'),
  new Cliche(text: 'Can everyone see my screen?'),
  new Cliche(text: 'Sorry, I was having connection issues..'),
  new Cliche(text: 'I think there is a lag..'),
  new Cliche(text: 'Sorry I didn\'t catch that, can you repeat?'),
];
