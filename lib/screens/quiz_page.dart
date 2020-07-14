import 'package:alagoanes/components/answer_card.dart';
import 'package:alagoanes/components/next_Button.dart';
import 'package:alagoanes/components/word_card.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  final List<Map<String, Object>> words;
  final int selected;
  final void Function() nextWord;
  final Color answerColorCard;
  final List<Map<String, Object>> answersList;

  QuizPage({
    @required this.words,
    @required this.selected,
    @required this.nextWord,
    @required this.answerColorCard,
    @required this.answersList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/lampiao.png'),
          fit: BoxFit.fitHeight,
          colorFilter: ColorFilter.mode(Colors.brown[300], BlendMode.hardLight),
          alignment: Alignment(-.6, 0),
        ),
      ),
      child: Container(
        //color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            WordCard(words[selected]['word']),
            ...answersList.map(
              (answer) => AnswerCard(
                  answer['answer'], answer['score'], answerColorCard),
            ),
            NextButton(nextWord),
          ],
        ),
      ),
    );
  }
}
