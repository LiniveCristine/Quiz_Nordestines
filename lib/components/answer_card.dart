import 'package:flutter/material.dart';

import '../error_list.dart';

// ignore: must_be_immutable
class AnswerCard extends StatefulWidget {
  final String answer;
  final int score;
  final String word;
  final String exemple;
  void Function(int) nextWord;

  AnswerCard({
    @required this.word,
    @required this.exemple,
    @required this.answer,
    @required this.score,
    @required this.nextWord,
  });

  @override
  _AnswerCardState createState() => _AnswerCardState();
}

class _AnswerCardState extends State<AnswerCard> {
  void addErrorList(String word, int score, String exemple) {
    if (score != 10) {
      errors.add({'word': word, 'exemple': exemple});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(7),
      elevation: 8,
      color: Color.fromRGBO(255, 255, 255, .7),
      child: FlatButton(
        onPressed: () {
          addErrorList(
            widget.word,
            widget.score,
            widget.exemple,
          );
          widget.nextWord(widget.score);
        },
        child: Text(widget.answer),
      ),
    );
  }
}
