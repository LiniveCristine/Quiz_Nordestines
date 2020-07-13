import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnswerCard extends StatefulWidget {
  final String _answer;
  final int _score;
  Color normalColor;

  AnswerCard(this._answer, this._score, this.normalColor);

  @override
  _AnswerCardState createState() => _AnswerCardState();
}

class _AnswerCardState extends State<AnswerCard> {
  void onSelected() {
    setState(() {
      if (widget._score == 10) {
        widget.normalColor = Color.fromRGBO(94, 156, 65, .9);
      } else {
        widget.normalColor = Color.fromRGBO(156, 65, 65, 0.9);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(7),
      elevation: 8,
      color: widget.normalColor,
      child: FlatButton(
        onPressed: () {
          onSelected();
        },
        child: Text(widget._answer),
      ),
    );
  }
}
