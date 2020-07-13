import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final void Function() _nextWord;
  NextButton(this._nextWord);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 7, right: 7),
      alignment: Alignment.centerRight,
      child: RaisedButton(
        color: Color.fromRGBO(58, 58, 61, 1),
        onPressed: _nextWord,
        child: Text(
          'Próxima',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
