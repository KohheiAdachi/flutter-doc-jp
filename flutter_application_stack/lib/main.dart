import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
        ),
        body: Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            // Container(
            //   width: 100,
            //   height: 100,
            //   color: Colors.green,
            // ),
            // Container(
            //   width: 50,
            //   height: 80,
            //   color: Colors.orange,
            // )
            SizedBox(
              width: 400.0,
              height: 400.0,
              child: Container(color: Colors.orange),
            ),
            Positioned(
                left: 20,
                top: 20,
                width: 300,
                height: 300,
                child: Container(
                  color: Colors.blue,
                )),
            Positioned(
                left: 10.0,
                top: 10,
                width: 100,
                height: 100,
                child: Container(color: Colors.green)),
            Positioned(
                left: 120.0,
                top: 120.0,
                width: 100.0,
                height: 100.0,
                child: Container(
                  color: Colors.orange
                )),
            Text('text')
          ],
        ),
      ),
    );
  }
}
