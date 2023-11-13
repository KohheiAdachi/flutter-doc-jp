import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MainPage(),
        ),
      ),
    );
  }
}

enum Answers { YES, NO }

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(32.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(
              _value,
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w600),
            ),
            new ElevatedButton(onPressed: () => {openDialog(context)}, child: new Text('ダイアログを開く'))
          ],
        ),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog<Answers>(
      context: context,
      builder: (BuildContext context) => new SimpleDialog(
        title: new Text('SimpleDialog'),
        children: <Widget>[
          createDialogOption(context, Answers.YES, 'Yes'),
          createDialogOption(context, Answers.NO, 'No')
        ],
      ),
    ).then((value) {
      switch (value!) {
        case Answers.YES:
          _setValue('Yes');
          break;
        case Answers.NO:
          _setValue('No');
          break;
      }
    });
  }

  createDialogOption(BuildContext context, Answers answer, String str) {
    return new SimpleDialogOption(
      child: new Text(str),
      onPressed: () {
        Navigator.pop(context, answer);
      },
    );
  }

}
