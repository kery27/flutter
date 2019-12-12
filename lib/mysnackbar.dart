import 'package:flutter/material.dart';

class MySnackBar extends StatefulWidget {
  @override
  _MySnackBarState createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snackbar'),
        ),
        body: Builder(
          builder: (context) => Center( //문제가 생겨서 컨텍스트를 새로 써주어야한대
              child: RaisedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text('나는스낵바'),
                    action: SnackBarAction(label: '취소', onPressed: (){

                    }),
                  );

                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Text('text'),
              )),
        ));
  }
}
