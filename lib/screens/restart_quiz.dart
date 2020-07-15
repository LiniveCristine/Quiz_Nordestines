import 'package:alagoanes/components/background.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class RestartPage extends StatelessWidget {
  final int score;
  RestartPage(this.score);

  String scoreMensageFilter() {
    if (score < 70) {
      return 'Ops . . .\n Não foi dessa vez.';
    } else if (score >= 70 || score <= 100) {
      return 'Mandou bem!\n Quase melhor que São João.';
    } else {
      return 'Me fala a verdade...!\n Tu é nordestino, ne?.';
    }
  }

  String socoreImageFilter() {
    if (score < 70) {
      return 'assets/images/seca.png';
    } else if (score >= 70 || score <= 100) {
      return 'assets/images/festa.png';
    } else {
      return 'assets/images/sanfona.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundImage(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            elevation: 8,
            color: Color.fromRGBO(58, 58, 61, .83),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Text(
                    'Resultado: $score/ 140',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  width: 85,
                  margin: EdgeInsets.only(bottom: 10, top: 10),
                  child: Image.asset(
                    socoreImageFilter(),
                    color: Colors.white,
                  ),
                ),
                Text(
                  scoreMensageFilter(),
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.center,
                ),
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Erros',
                      style: Theme.of(context).textTheme.headline5,
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: FloatingActionButton(
              backgroundColor: Color.fromRGBO(58, 58, 61, .83),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Icon(
                Icons.replay,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
