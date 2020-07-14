import 'package:alagoanes/components/background.dart';
import 'package:flutter/material.dart';

class RestartPage extends StatelessWidget {
  final int score;
  RestartPage(this.score);

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
                    'assets/images/festa.png',
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Mandou bem!\n Quase melhor que São João.',
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
              onPressed: () {},
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
