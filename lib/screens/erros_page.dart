import 'package:alagoanes/components/background.dart';
import 'package:flutter/material.dart';
import '../error_list.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Quiz Nordestinês'),
      ),
      body: BackgroundImage(
        child: ListView.builder(
          itemCount: errors.length,
          itemBuilder: (context, index) {
            String _word = errors[index]['word'];
            String _exemple = errors[index]['exemple'];

            return Card(
              elevation: 8,
              color: Theme.of(context).accentColor,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '$_word:',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      '$_exemple',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
