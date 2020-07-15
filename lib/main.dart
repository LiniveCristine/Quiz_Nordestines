import 'package:alagoanes/screens/quiz_page.dart';
import 'package:alagoanes/screens/restart_quiz.dart';
import 'package:alagoanes/words.dart';
import 'package:flutter/material.dart';
import 'error_list.dart';

void main() => runApp(NordestinesApp());

class NordestinesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.brown,
        accentColor: Color.fromRGBO(58, 58, 61, .83),
        fontFamily: 'Poppins',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 45,
              ),
              headline5: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              headline4: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selected = 0;
  bool _moreWords = true;
  int total = 0;

  void _nextWord(int score) {
    setState(() {
      if (_selected < words.length - 1) {
        total += score;
        _selected++;
      } else {
        _selected = 0;
        _moreWords = false;
      }
    });
  }

  void restartQuiz(context) {
    setState(() {
      errors.clear();
    });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Quiz Nordestinês'),
      ),
      body: _moreWords
          ? QuizPage(
              selected: _selected,
              nextWord: _nextWord,
            )
          : RestartPage(
              score: total,
              restartFunction: restartQuiz,
            ),
    );
  }
}
