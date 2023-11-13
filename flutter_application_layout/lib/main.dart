import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main() {

  debugPaintSizeEnabled = true;
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //     title: 'Flutter Material Design',
    //     home: Scaffold(
    //       appBar: AppBar(
    //         title: Text('Material Design Layout'),
    //       ),
    //       body: Center(child: Text('Hello World')),
    //     ));
    // return Container(
    //     decoration: BoxDecoration(color: Colors.white),
    //     child: Center(
    //       child: Text(
    //         'Hello World',
    //         textDirection: TextDirection.ltr,
    //         style: TextStyle(fontSize: 32, color: Colors.black),
    //       ),
    //     ));
    // return MaterialApp(
    //     title: 'Flutter Material Design',
    //     home: Scaffold(
    //       body: Center(
    //           child: Container(
    //         color: Colors.blue[900],
    //         width: 150.0,
    //         height: 150.0,
    //             child: Text('Hello'),
    //             // padding: const EdgeInsets.all(50.0),
    //             // padding: const EdgeInsets.only(top: 50, bottom: 30, left: 30),
    //             alignment: Alignment.bottomCenter,
    //             // transform: Matrix4.rotationZ(0.1),
    //       )),
    //     ));
    // return MaterialApp(
    //   title: 'Column & Row',
    //   home: Container(
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.end,
    //       children: <Widget>[
    //         Column(
    //           children: <Widget>[
    //             Container(color: Colors.blue , width: 100, height: 100,),
    //             Container(color: Colors.red, width: 100, height: 100,),
    //             Container(color: Colors.red, width: 100, height: 100,)
    //           ],
    //         ),
    //         Column(
    //           children: <Widget>[
    //             Container(color: Colors.green, width: 100, height: 100,),
    //             Container(color: Colors.orange, width: 100, height: 100,),
    //             Container(color: Colors.orange, width: 100, height: 100,)
    //           ],
    //         )
    //       ],
    //     ),
    //   )
    // );
    // return MaterialApp(
    //   title: 'Column & Row',
    //   home: Center(
    //     child:Container(
    //       color: Colors.white,
    //       child: Row(
    //         mainAxisSize: MainAxisSize.min,
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           Container( color: Colors.blue, width: 50, height:50 ),
    //           Container( color: Colors.red, width: 50, height:50 ),
    //           Container( color: Colors.green, width: 50, height:50 ),
    //           Container( color: Colors.orange, width: 50, height:50 ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
    // return MaterialApp(
    //   title: 'Expanded',
    //   home: Container(
    //     child: Row(
    //       children: <Widget>[
    //         // Expanded(child: Container(color: Colors.blue)),
    //         // Expanded(child: Container(color: Colors.red)),
    //         // Expanded(flex: 2, child: Container(color: Colors.green)),
    //         // Expanded(child: Container(color: Colors.orange)),
    //       ],
    //     ),
    //   )
    // );
    // return MaterialApp(
    //     title: 'Expanded',
    //     home: Container(
    //       child: Row(
    //         crossAxisAlignment: CrossAxisAlignment.stretch,
    //         children: <Widget>[
    //           Container(color: Colors.blue, width: 100, height: 100),
    //           Container(color: Colors.red, width: 100, height: 100)
    //         ],
    //       ),
    //     )
    // );
    return MaterialApp(
        title: 'Expanded',
        home: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // textDirection: TextDirection.rtl,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text('Direction', style: TextStyle(color: Colors.blue, fontSize: 30)),
              Text('Direction', style: TextStyle(color: Colors.red, fontSize: 25),)
            ],
          ),
        )
    );
  }
}
