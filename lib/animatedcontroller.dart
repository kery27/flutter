import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimateContainer extends StatefulWidget {
  @override
  _MyAnimateContainerState createState() => _MyAnimateContainerState();
}

class _MyAnimateContainerState extends State<MyAnimateContainer> {

  double _width  = 50;
  double _height = 50;
  Color  _color  = Colors.grey;

  @override
  Widget build(BuildContext context) {
    final random1 = Random();
    return Scaffold(
        appBar: AppBar(
          title: Text('AnimatedController')
        ),
        body: Center(
          child: AnimatedContainer(
            width:_width,
            height: _height,
            //color:_color,
            //데코가 있을땐 컬러가 null 데코 안으로 들어가야
            decoration: BoxDecoration(
                color:_color,
                borderRadius: BorderRadius.circular(random1.nextInt(100).toDouble())
            ),
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: Center(child: Text('.')),
          )),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              final random = Random();
              _width  = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();
              _color  = Color.fromRGBO(random.nextInt(256),
                  random.nextInt(256),
                  256,
                  1);
            });
          },
          child: Icon(Icons.play_arrow),
        ),
    );
  }
}
