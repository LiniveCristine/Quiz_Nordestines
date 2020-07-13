import 'package:flutter/material.dart';

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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              Container(
                margin: EdgeInsets.only(bottom: 20),
                //color: Colors.blue,

                child: Card(
                  elevation: 8,
                  color: Color.fromRGBO(58, 58, 61, .83),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        //color: Colors.blue,
                        child: Text(
                          'O que significa:',
                          style: Theme.of(context).textTheme.headline5,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Text(
                        'Migué',
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(7),
                elevation: 8,
                color: Color.fromRGBO(255, 255, 255, .7),
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Resporta 1'),
                ),
              ),
              Card(
                margin: EdgeInsets.all(7),
                elevation: 8,
                color: Color.fromRGBO(255, 255, 255, .7),
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Resporta 2'),
                ),
              ),
              Card(
                margin: EdgeInsets.all(7),
                elevation: 8,
                color: Color.fromRGBO(255, 255, 255, .7),
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Resporta 3'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7, right: 7),
                alignment: Alignment.centerRight,
                //color: Colors.amber,
                child: RaisedButton(
                  color: Color.fromRGBO(58, 58, 61, 1),
                  onPressed: () {},
                  child: Text(
                    'Próxima',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
