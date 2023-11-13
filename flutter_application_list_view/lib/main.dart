import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       body: ListView(
  //         children: [
  //           _menuItem("メニュー1", Icon(Icons.settings)),
  //           _menuItem("メニュー2", Icon(Icons.map)),
  //           _menuItem("メニュー3", Icon(Icons.room)),
  //           _menuItem("メニュー4", Icon(Icons.local_shipping)),
  //           _menuItem("メニュー5", Icon(Icons.airplanemode_active)),
  //         ],
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget _menuItem(String title, Icon icon){
  //   return GestureDetector(
  //     child: Container(
  //       padding: EdgeInsets.all(8.0),
  //       decoration: new BoxDecoration(
  //         border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
  //       ),
  //       child: ListTile(
  //         leading: icon,
  //         title: Text(
  //           title,
  //           style: TextStyle(
  //             color: Colors.black,
  //             fontSize: 18.0
  //           ),
  //         ),
  //       ),
  //     ),
  //     onTap: () {
  //       print('on Tap called');
  //     },
  //     onLongPress: () {
  //       print('onLongPress called');
  //     },
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    var list = [
      "0","1","2","3","4","5","6","7","8","9"
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('ListView'),
            ),
            body: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                if (index >= list.length) {
                  list.addAll(["0","1","2","3","4","5","6","7","8","9",]);
                }
                return _messageItem(list[index]);
              },
            )));
  }

  Widget separatorItem() {
    return Container(
      height: 10,
      color: Colors.orange,
    );
  }

  Widget _messageItem(String title) {
    return Container(
        width: 100,
        decoration: new BoxDecoration(
            border: new Border(right: BorderSide(width: 1.0, color: Colors.grey))
        ),
        child:Center(
          child:Text(
            title,
            style: TextStyle(
                color:Colors.black,
                fontSize: 20.0
            ),
          ),
        )
    );
  }
}
