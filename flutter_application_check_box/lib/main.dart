import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form'),
        ),
        body: Center(
          child: ChangeForm(),
        ),
      ),
    );
  }
}

class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {
  bool _flag = false;

  void _handleCheckbox(bool? e) {
    setState(() {
      _flag = e!;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: <Widget>[
        // Center(
        //   child: new Icon(
        //     Icons.three_mp,
        //     size: 100,
        //     color: _flag ? Colors.orange : Colors.grey,
        //   ),
        // ),
        // Checkbox(
        //   value: _flag,
        //   activeColor: Colors.blue,
        //   onChanged: _handleCheckbox,
        // ),
        new CheckboxListTile(
          title: Text('チェックボックス'),
            subtitle: Text('チェックボックスのサブタイトル'),
            secondary: new Icon(
              Icons.thumb_up,
                  color: _flag ? Colors.orange : Colors.grey
            ),
            controlAffinity: ListTileControlAffinity.platform,
            value: _flag, onChanged: _handleCheckbox)
      ]),
    );
  }
}
