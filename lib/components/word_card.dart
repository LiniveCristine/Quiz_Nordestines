import 'package:flutter/material.dart';

class WordCard extends StatelessWidget {
  final String _word;
  WordCard(this._word);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Card(
        elevation: 8,
        color: Theme.of(context).accentColor,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Text(
                'O que significa:',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.start,
              ),
            ),
            Text(
              _word,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
