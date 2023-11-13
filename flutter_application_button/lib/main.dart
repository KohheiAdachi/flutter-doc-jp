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
  int _count = 0;

  String _defaultValue = 'りんご';
  List<String> _list = <String>['りんご', 'オレンジ', 'みかん', 'ぶどう'];
  String _text = '';

  void _handlePressed() {
    setState(() {
      _count++;
    });
  }

  void _handleChange(String? newValue) {
    setState(() {
      _text = newValue!;
      _defaultValue = newValue!;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50.0),
      child: Column(children: <Widget>[
        Text(
          "$_count",
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.w500),
        ),
        OutlinedButton(
            onPressed: _handlePressed,
            style: ButtonStyle(
              // backgroundColor: MaterialStateProperty.all<Color>((Colors.blue)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            ),
            child: Text('更新',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
        IconButton(
          iconSize: 100,
          onPressed: _handlePressed,
          color: Colors.blue,
          icon: Icon(Icons.add_circle_outline),
        ),
        FloatingActionButton.extended(
          onPressed: _handlePressed,
          backgroundColor: Colors.blue,
          // child: Text('更新')
          label: Text('ボタン'),
        ),
        PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(value: "1", child: Text('選択1')),
                  const PopupMenuItem<String>(value: "1", child: Text('選択1')),
                  const PopupMenuItem<String>(value: "1", child: Text('選択1')),
                ]),
        DropdownButton(
          value: _defaultValue,
          onChanged: _handleChange,
          items: _list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
        )
      ]),
    );
  }
}
