import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final Widget child;
  BackgroundImage({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/lampiao.png'),
          fit: BoxFit.fitHeight,
          colorFilter: ColorFilter.mode(
            Colors.brown[300],
            BlendMode.hardLight,
          ),
          alignment: Alignment(-.6, 0),
        ),
      ),
      child: child,
    );
  }
}
