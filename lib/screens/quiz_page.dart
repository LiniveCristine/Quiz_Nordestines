import 'package:alagoanes/components/answer_card.dart';
import 'package:alagoanes/components/background.dart';
import 'package:alagoanes/components/word_card.dart';
import 'package:flutter/material.dart';
import '../words.dart';

class QuizPage extends StatelessWidget {
  final int selected;
  final void Function(int) nextWord;

  QuizPage({
    @required this.selected,
    @required this.nextWord,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> _answersList = words[selected]['answers'];
    return Container(
      child: BackgroundImage(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            WordCard(words[selected]['word']),
            ..._answersList.map(
              (answer) => AnswerCard(
                word: words[selected]['word'],
                exemple: words[selected]['exemple'],
                answer: answer['answer'],
                score: answer['score'],
                nextWord: nextWord,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
