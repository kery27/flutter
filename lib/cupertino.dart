import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cupertinopage extends StatefulWidget {
  Cupertinopage({Key key}) : super(key: key);

  @override
  _CupertinopageState createState() => _CupertinopageState();
}

class _CupertinopageState extends State<Cupertinopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text('test'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoButton(
              child: Text("cupertinobutton"),
              onPressed: () {},
            )
          ],
        ));
  }
}
