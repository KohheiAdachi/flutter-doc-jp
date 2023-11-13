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
  String _type = '';

  void _handleRadio(String? e) => setState(() {
        _type = e!;
      });

  IconData _changeIcon(String e) {
    IconData icon;
    switch (e) {
      case 'thumb_up':
        icon = Icons.thumb_up;
        break;
      case 'favorite':
        icon = Icons.favorite;
      default:
        icon = Icons.favorite;
    }
    return icon;
  }

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      child: Column(children: <Widget>[
        Center(
          child: Icon(
            _changeIcon(_type),
            size: 100,
            color: Colors.red,
          ),
        ),
        new Radio(
          activeColor: Colors.blue,
          value: 'thumb_up',
          groupValue: _type,
          onChanged: _handleRadio,
        ),
        new Radio(
            value: 'favorite', groupValue: _type, onChanged: _handleRadio),
        new RadioListTile(
            secondary: Icon(Icons.favorite),
            activeColor: Colors.orange,
            title: Text('favorite'),
            subtitle: Text('Favoriteアイコンの表示'),
            value: 'favorite',
            groupValue: _type,
            onChanged: _handleRadio),
        new RadioListTile(
            secondary: Icon(Icons.thumb_up),
            activeColor: Colors.orange,
            title: Text('thumb_up'),
            subtitle: Text('thumb_upアイコンの表示'),
            value: 'thumb_up',
            groupValue: _type,
            onChanged: _handleRadio)
      ]),
    );
  }
}
