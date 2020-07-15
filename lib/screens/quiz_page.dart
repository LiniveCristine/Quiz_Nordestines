import 'package:alagoanes/components/answer_card.dart';
import 'package:alagoanes/components/background.dart';
import 'package:alagoanes/components/word_card.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  final List<Map<String, Object>> words;
  final List<Map<String, Object>> answersList;
  final int selected;
  final void Function(int) nextWord;
  final void Function(String, int, String) addErrorList;

  QuizPage({
    @required this.words,
    @required this.selected,
    @required this.nextWord,
    @required this.answersList,
    @required this.addErrorList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BackgroundImage(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            WordCard(words[selected]['word']),
            ...answersList.map(
              (answer) => AnswerCard(
                words[selected]['word'],
                words[selected]['exemple'],
                answer['answer'],
                answer['score'],
                nextWord,
                addErrorList,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
