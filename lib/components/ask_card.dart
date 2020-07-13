import 'package:flutter/material.dart';

class AskCard extends StatelessWidget {
  final String _answer;
  AskCard(this._answer);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(7),
      elevation: 8,
      color: Color.fromRGBO(255, 255, 255, .7),
      child: FlatButton(
        onPressed: () {},
        child: Text(_answer),
      ),
    );
  }
}
