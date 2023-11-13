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

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  final _tab = <Tab>[
    Tab(text: 'Car', icon: Icon(Icons.directions_car)),
    Tab(text: 'Bicycle', icon: Icon(Icons.directions_bike)),
    Tab(
      text: 'Boat',
      icon: Icon(Icons.directions_boat),
    )
  ];

  // Widget build(BuildContext context) {
  //   return DefaultTabController(
  //       length: _tab.length,

  //       child: Scaffold(
  //           appBar: AppBar(
  //             title: const Text('TabBar'),
  //             bottom: TabBar(
  //               tabs: _tab,
  //             ),
  //           ),
  //           body: TabBarView(
  //             children: <Widget>[
  //               TabPage(title: 'Car', icon: Icons.directions_car),
  //               TabPage(title: 'Bicycle', icon: Icons.directions_bike),
  //               TabPage(title: 'Boat', icon: Icons.directions_boat)
  //             ],
  //           )));
  // }

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tab.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar'),
        bottom: TabBar(
          controller: _tabController,
          tabs: _tab,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          TabPage(title: 'Car', icon: Icons.directions_car),
          TabPage(title: 'Bicycle', icon: Icons.directions_bike),
          TabPage(title: 'Boat', icon: Icons.directions_boat)
        ],
      ),
    );
  }
}

class TabPage extends StatelessWidget {
  final IconData? icon;
  final String? title;

  const TabPage({Key? key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.displaySmall;
    return Center(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 64.0, color: textStyle!.color),
            Text(title!, style: textStyle),
          ]),
    );
  }
}
