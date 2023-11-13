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
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: const Text('AppBar'),
          backgroundColor: Colors.orange,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.face, color: Colors.white), onPressed: () {  },
            ),
            IconButton(
              icon: Icon(Icons.email, color: Colors.white), onPressed: () {  },
            ),
            IconButton(
              icon: Icon(Icons.favorite, color: Colors.white), onPressed: () {  },
            ),
          ],
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
  DateTime _date = new DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: new DateTime(2016),
      lastDate: new DateTime.now().add(new Duration(days: 360)),
    );
    if (picked != null) setState(() => _date = picked);
  }

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        children: <Widget>[
          Center(
            child: Text("${_date}"),
          ),
          new ElevatedButton(
              onPressed: () => _selectDate(context), child: new Text('日付選択'))
        ],
      ),
    );
  }
}
