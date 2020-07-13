import 'package:alagoanes/words.dart';
import 'package:flutter/material.dart';
import 'components/ask_card.dart';
import 'components/next_Button.dart';
import 'components/word_card.dart';

void main() => runApp(NordestinesApp());

class NordestinesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.brown,
        accentColor: Colors.grey,
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
  List<Map<String, Object>> _words = words;
  int _selected = 0;

  void _nextWord() {
    setState(() {
      _selected++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answersList = _words[_selected]['answers'];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Quiz Nordestinês'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/lampiao.png'),
            fit: BoxFit.fitHeight,
            colorFilter:
                ColorFilter.mode(Colors.brown[300], BlendMode.hardLight),
            alignment: Alignment(-.6, 0),
          ),
        ),
        child: Container(
          //color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              WordCard(_words[_selected]['word']),
              ...answersList.map(
                (answer) => AskCard(answer['answer']),
              ),
              NextButton(_nextWord),
            ],
          ),
        ),
      ),
    );
  }
}
