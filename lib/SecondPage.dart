import 'package:flutter/material.dart';

//class SecondPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//      color: Colors.blueGrey.withOpacity(0.1),
//      child: new Center(
//        child: new Icon(Icons.blur_circular,
//            size: 150.0, color: Colors.green),
//      ),
//    );
//  }
//}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => new _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<bool> _data = new List<bool>();

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 1000; i++) {
      _data.add(false);
    }
  }

  void _onChange(bool value, int index) {
    setState((){
      _data[index] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            child: new Container(
              padding: new EdgeInsets.all(5.0),
              child: new Column(
                children: <Widget>[
                  new Text(('This is item ${index}')),
                  new CheckboxListTile(
                    value: _data[index],
                    controlAffinity: ListTileControlAffinity.leading,
                    title: new Text('Click me item $index'),
                    onChanged: (bool value){_onChange(value, index);},
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
