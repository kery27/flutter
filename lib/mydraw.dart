import 'package:flutter/material.dart';

class MyDraw extends StatefulWidget {
  @override
  _MyDrawState createState() => _MyDrawState();
}

class _MyDrawState extends State<MyDraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer( //햄버거 추가
        child: ListView(
          padding : EdgeInsets.zero,  //윗부분 전부 다 채우
          children: <Widget>[
            //Text('text ')
            DrawerHeader(
              child: Text("test"),
              decoration: BoxDecoration(
                color:Colors.black38
              ),
            ),
            ListTile(
              title: Text("Item1"),
              onTap: (){
                //할일
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Item2"),
              onTap: (){
                //할일
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Item3"),
              onTap: (){
                //할일
                Navigator.pop(context);
              },
            ),
          ],
        )
      ),
      appBar: AppBar(title: Text('Draw'),),
      body:Center(child: Text('Draw Example ')),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
          
          }),
    );
  }
}
