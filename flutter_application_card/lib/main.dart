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
              title: Text('Card'),
            ),
            body: Card(
              margin: const EdgeInsets.all(50),
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 300,
                height: 100,
                child: Text(
                  'Card',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )));
  }
}
