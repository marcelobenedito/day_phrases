import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _phrases = [
    'The important isn\'t to win every day, but always fight.',
    'Conquest yourself is better than to win a thousand battle.',
    'The fear of lose makes you lose desire to win. ',
    'Lose for a reason, always makes you win.'
  ];

  var _generatedPhrase = "Click above to build a phrase!";

  void _getPhraseNumber() {
    setState(() {
      _generatedPhrase = _phrases[Random().nextInt(_phrases.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day Phrases"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Text(
              _generatedPhrase,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
              textAlign: TextAlign.justify,
            ),
            RaisedButton(
              child: Text(
                "New Phrase",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.green,
              onPressed: _getPhraseNumber,
            )
          ],
        ),
      ),
    );
  }
}

