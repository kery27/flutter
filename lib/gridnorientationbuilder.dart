import 'package:flutter/material.dart';

class GridNOrientationBuilder extends StatefulWidget {
  @override
  _GridNOrientationBuilderState createState() =>
      _GridNOrientationBuilderState();
}

class _GridNOrientationBuilderState extends State<GridNOrientationBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GridnOrientationbuilder'),
        ),
        body: OrientationBuilder(// 가로 세로를 바꿧을때 그리드뷰의 가로 갯수를 조절하기위함
          builder: (BuildContext context, Orientation orientation) {
            return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 3 : 5,
              children: List.generate(40, (position) {
                return Center(
                  child: Text('Item $position'),
                );
              }),
            );
          }));
  }
}
