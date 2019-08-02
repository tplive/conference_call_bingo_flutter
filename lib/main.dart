import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final TextStyle cardStyle = TextStyle(
  fontSize: 10.0,
  fontWeight: FontWeight.w100,
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
            Row(
              children: <Widget>[
                Expanded(
                  child: BingoCard(
                    cliches[0],
                    onPress: null,
                  ),
                ),
                Expanded(
                  child: BingoCard(
                    cliches[1],
                    onPress: null,
                  ),
                ),
                Expanded(
                  child: BingoCard(
                    cliches[2],
                    onPress: null,
                  ),
                ),
                Expanded(
                  child: BingoCard(
                    cliches[3],
                    onPress: null,
                  ),
                ),
                Expanded(
                  child: BingoCard(
                    cliches[4],
                    onPress: null,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class BingoCard extends StatelessWidget {
  BingoCard(this.text, {this.onPress});


  final Function onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          child: Text(
            text,
            style: cardStyle,
          ),
          margin: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}

final List<String> cliches = [
  'Hi, who just joined?',
  'Can you email that to everyone?',
  '___, are you there?',
  'Uh, ___, you\'re still sharing..',
  'Hey guys, I have to jump to another call',
  '(sound of someone typing, possibly with a hammer)',
  '(loud, painful echo/feedback',
  '(child or animal noises',
  'Hi, can you hear me?',
  '..no, it\'s still loading',
  'Next slide, please..',
  'Can everyone go on mute?',
  'I\'m sorry, I was on mute..',
  '(for overtalkers)\nSorry, go ahead.',
  'Hello?\nHello!?',
  'So, (fades out), I can (unintelligible) by (cuts out) ok?',
  'Sorry I\'m late <insert lame excuse>',
  'I have a hard stop at..',
  'I\'m sorry, you cut out there..',
  'Can we take this offline?',
  'I\'ll have to get back to you',
  'Can everyone see my screen?',
  'Sorry, I was having connection issues..',
  'I think there is a lag..',
  'Sorry I didn\'t catch that, can you repeat?'
];
