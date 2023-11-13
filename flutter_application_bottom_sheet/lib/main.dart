import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

enum Answers { OK, CLOSE }

class _MainPageState extends State<MainPage> {
  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  void _showBottom() async {
    var value = await showModalBottomSheet<Answers>(
        context: context,
        builder: (BuildContext context) {
          return new Container(
            height: 250,
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[new Text('複数行の内容を'), new Text('表示することができます。')],
            ),
          );
        });

    switch (value!) {
      case Answers.OK:
        _setValue('OK');
        break;
      case Answers.CLOSE:
        _setValue('CLOSE');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('showmodelBottomSheet'),
      ),
      body: new Column(
        children: <Widget>[
          new Text(
            _value,
            style: TextStyle(
                fontSize: 50,
                color: Colors.blueAccent,
                fontWeight: FontWeight.w600),
          ),
          new ElevatedButton(
              onPressed: _showBottom, child: new Text('Click me'))
        ],
      ),
    );
  }
}
