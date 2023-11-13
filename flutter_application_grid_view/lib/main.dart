import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var grid = [
      "pic1",
      "pic1",
      "pic1",
      "pic1",
      "pic1",
      "pic1",
    ];
    // return MaterialApp(
    //     home: Scaffold(
    //         appBar: AppBar(
    //           title: Text('GridView'),
    //         ),
    //         body: GridView.extent(
    //             maxCrossAxisExtent: 150,
    //             padding: const EdgeInsets.all(4),
    //             mainAxisSpacing: 4,
    //             crossAxisSpacing: 4,
    //             children: list))
    // );
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 4, childAspectRatio: 0.7),
          // scrollDirection: Axis.horizontal,
          // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //   maxCrossAxisExtent: 150,
          // ),
          itemBuilder: (BuildContext context, int index) {
            if (index >= grid.length) {
              grid.addAll([
                "pic1",
                "pic1",
                "pic1",
                "pic1",
                "pic1",
                "pic1",
              ]);
            }
            return _photoItem(grid[index]);
          }),
    ));
  }

  Widget _photoItem(String image) {
    var assetsImage = "assets/img/" + image + ".png";
    return Container(
      child: Image.asset(
        assetsImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
