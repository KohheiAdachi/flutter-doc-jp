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
  double _value = 0.0;
  double _startValue = 0.0;
  double _endValue = 0.0;

  void _changeSlider(double e) => setState(() {
        _value = e;
      });
  void _startSlider(double e) => setState(() {
        _startValue = e;
      });
  void _endSlider(double e) => setState(() {
        _endValue = e;
      });

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Center(child: Text("現在の値：${_value}")),
            Center(child: Text("開始時の値：${_startValue}")),
            Center(child: Text("終了時の値：${_endValue}")),
            new Slider(
              label: '${_value}',
              min: 0,
              max: 10,
              value: _value,
              activeColor: Colors.orange,
              inactiveColor: Colors.blueAccent,
              divisions: 10,
              onChanged: _changeSlider,
              onChangeStart: _startSlider,
              onChangeEnd: _endSlider,
            )
          ],
        ));
  }
}
