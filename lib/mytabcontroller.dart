import 'package:flutter/material.dart';

class MyTabcontroller extends StatefulWidget {
  @override
  _MyTabcontrollerState createState() => _MyTabcontrollerState();
}

class _MyTabcontrollerState extends State<MyTabcontroller> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title :Text('Tabcontroller'),
          bottom: TabBar(tabs: [
            Tab(icon:Icon(Icons.access_alarms),text:'tab1'),
            Text('tab2'),
            Text('tab3'),
          ]),
        ),
        body: TabBarView(children: [
          Icon(Icons.access_alarms),
          Center(child: Text('tab2 이에요')),
          Center(child: Text('tab3 거지같')),
        ]),
      ), length: 3,
    );
  }
}
