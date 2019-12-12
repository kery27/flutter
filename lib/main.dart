import 'package:flutter/material.dart';
import 'package:newapp/animatedcontroller.dart';
import 'package:newapp/mydraw.dart';
import 'cupertino.dart';
import 'animatedopacity.dart';
import 'mysnackbar.dart';
import 'gridnorientationbuilder.dart';
import 'mytabcontroller.dart';
import 'formvalidation.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.grey,
          accentColor: Colors.yellow,
        ),
        home: ValueChange(title: 'helloworld'));
        //home: MyAnimateContainer());
  }
}

class ValueChange extends StatefulWidget {
  final String title;

  const ValueChange({Key key, this.title}) : super(key: key);

  @override
  _ValueChangeState createState() => _ValueChangeState();
}

class _ValueChangeState extends State<ValueChange> {
  String _message = '널 부자만들어줄 어플'; //이 변수는 왜 파이널을 안썻나 의문이듬
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_drop_up), onPressed: _changecounteradd),
        appBar: AppBar(title: Text(widget.title)),
          body: Center(
            child: Column(
          //컬럼 정렬이 맨위로 붙게됨
          mainAxisAlignment:
              MainAxisAlignment.center, //컬럼 정렬 메인 축을 맨위에 붙어있는걸 가운데로 하겟다.
          crossAxisAlignment:
              CrossAxisAlignment.center, //컬럼 정렬 메인 축을 맨위에 붙어있는걸 가운데로 하겟다.
          children: <Widget>[
            //여러개의 자식 위젯이 들어갈수 있다
            Text(_message, style: TextStyle(fontSize: 30)),
            Text('$_counter',
                style: TextStyle(
                    fontSize: 30)), // 인트 값을 스트링으로 넣기위해서 '' 로 감싸고 그안에 $를 먹이면 됨
            RaisedButton(
                child: Text("부자되는날 까지 D-200"),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Cupertinopage();
                    }))),
            RaisedButton(
                child: Text("구미가 좋은데"),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return MyAnimateContainer();
                    }))),
            RaisedButton(
                child: Text("Animatedopacity"),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return MyAnimatedOpacity();
                    }))),
            RaisedButton(
                child: Text("Draw"),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return MyDraw();
                    }))),
            RaisedButton(
                child: Text("Snackbar"),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return MySnackBar();
                    }))),
            RaisedButton(
                child: Text("GridnOrientationbuilder"),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return GridNOrientationBuilder();
                    }))),
            RaisedButton(
                child: Text("Tabcontroller"),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return MyTabcontroller();
                    }))),
            RaisedButton(
                child: Text("Formvalidation"),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return MyFormValidation();
                    }))),
          ],
        )));
  }

  void _changeText() {
    setState(() {
      _message = '왓더가르시아';
    });
  }

  void _changecounteradd() {
    setState(() {
      _counter++;
    });
  }

  void _changecounterminus() {
    setState(() {
      _counter--;
    });
  }
}
 class statful extends StatefulWidget {
  String _valueon;

  statful(this._valueon);

  @override
   _statfulState createState() => _statfulState();


 }

 class _statfulState extends State<statful> {
   @override
   Widget build(BuildContext context) {
     return Container();
   }
 }




/*
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '바보야',
            ),
            Text('$_counter', style: Theme.of(context).textTheme.display3),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/
