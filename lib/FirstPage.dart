import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.blueGrey.withOpacity(0.1),
      child: new Center(
        child: new Icon(Icons.airplanemode_active,
            size: 150.0, color: Colors.purple),
      ),
    );
  }
}
