import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.blueGrey.withOpacity(0.1),
      child: new Center(
        child: new Icon(Icons.announcement,
            size: 150.0, color: Colors.red),
      ),
    );
  }
}


