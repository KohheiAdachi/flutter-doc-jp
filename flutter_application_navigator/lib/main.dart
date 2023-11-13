import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MainPage(),
        // 事前にroutesを定義する場合以下のように定義する
        routes: <String, WidgetBuilder>{
          // ルーティング名称に対して、表示されるページのWidgetを指定する
          '/home': (BuildContext context) => new MainPage(),
          '/sub1page': (BuildContext context) => new SubPage(page: Pages.PAGE1),
          '/sub2page': (BuildContext context) => new SubPage(page: Pages.PAGE2),
          '/sub3page': (BuildContext context) => new SubPage(page: Pages.PAGE3)
        });
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Navigator'),
      ),
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(children: <Widget>[
              Text('Main'),
              ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return SubPage(page: Pages.PAGE3);
                      })),
                  child: new Text('Subページへ'))
            ]),
          )),
    );
  }
}

enum Pages { PAGE1, PAGE2, PAGE3 }

class SubPage extends StatelessWidget {
  final Pages? page;

  SubPage({this.page});

  @override
  Widget build(BuildContext context) {
    List<Widget> widget;
    switch (page!) {
      case Pages.PAGE1:
        widget = <Widget>[
          Text('Sub1'),
          ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/sub2page'),
              child: new Text('次へ')),
          ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: new Text('戻る'))
        ];
        break;
      case Pages.PAGE2:
        widget = <Widget>[
          Text('Sub2'),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pushNamed("/sub3page"),
            child: new Text('次へ'),
          ),
          ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: new Text('戻る'))
        ];
        break;
      case Pages.PAGE3:
        widget = <Widget>[
          Text('Sub3'),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('/sub1page', ModalRoute.withName('/home')),
            child: new Text('サブ１へ'),
          ),
          ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: new Text('戻る'))
        ];
    }

    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Navigator'),
        ),
        body: new Container(
            padding: new EdgeInsets.all(32.0),
            child: new Center(
                child: new Column(
              children: widget,
            ))));
  }
}
