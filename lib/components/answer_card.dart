import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnswerCard extends StatefulWidget {
  final String _answer;
  final int _score;
  void Function(int) nextWord;

  AnswerCard(
    this._answer,
    this._score,
    this.nextWord,
  );

  @override
  _AnswerCardState createState() => _AnswerCardState();
}

class _AnswerCardState extends State<AnswerCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(7),
      elevation: 8,
      color: Color.fromRGBO(255, 255, 255, .7),
      child: FlatButton(
        onPressed: () {
          widget.nextWord(widget._score);
        },
        child: Text(widget._answer),
      ),
    );
  }
}
