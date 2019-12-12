import 'package:flutter/material.dart';

class MyFormValidation extends StatefulWidget {
  @override
  _MyFormValidationState createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  final _formKey = GlobalKey<FormState>(); //위젯이 가지는 속성, 전체 앱에서 유일한값.
    //제네릭을 넣어주지않으면 앱전체가되므로 폼스테이트를 추가해준다
  // 폼안을 들여다보면 폼스테이트가 생성된걸 볼수 있다. 이것을 활용해서 폼을 다룬다.

  //포커스를 관리 할때쓰는것
  FocusNode nameFocusNode;

  //다른 필드의 값을 가져오고 싶을때 관찰하기위한 변수
  final nameController = TextEditingController();

  //화면이 생길떄? ok
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('dddddd');
    nameFocusNode = FocusNode();
  }

  //화면이 사라질때??? ok
  @override
  void dispose() {
    // TODO: implement dispose
    nameFocusNode.dispose();
    super.dispose();
    print('dddddd1');

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formvalidation'),

      ),
      body: Form(
        key:_formKey, //폼키를 통해 폼스테이트를 알게된다는데 잘 이해 안감
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              validator: (value){
                if (value.isEmpty){
                  return '공백 불가';
                }
              }
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  if(_formKey.currentState.validate()){
                    //버튼을 눌렀을때 폼의 유효성을 체크할건데 저위에 벨리데이터를두고 엠티체크구문을
                    //적어뒀기에 여기서 폼스테이트 값을 가져와서 폼이 밸리드한지체크를 해줘야
                    //버튼이 제기능을 하는걸 알수 있다. ????

                   //valid 이후 처리
                    //아래로 하면 에러가 남. 컨텍스트 빌더를 써서 다른 컨텍스트를 쓰고있단 처리를 해야하나
                    //폼은 따로 컨텍스트를 가지고 있으므로 처리가능
                    //Scaffold.of(context).showSnackBar(SnackBar(content:Text('처리중')));
                    Scaffold.of(_formKey.currentContext).showSnackBar(
                        SnackBar(content:Text('처리중'),
                                 action:SnackBarAction(
                                     label: '처리중',
                                     onPressed: (){

                    }),));
                  }else{
                    
                  }
                },child: Text('작성완'),),
            ),
            TextField(
              controller: nameController,
              focusNode: nameFocusNode,
              decoration: InputDecoration(
                  hintText: '무슨말을 하는거니',
                  border: InputBorder.none,
                  labelText: 'label_name'


              ),
              autofocus: true,
            ),
            RaisedButton(
              onPressed: (){
                FocusScope.of(context).requestFocus(nameFocusNode);
              },
              child: Text('focus'),),
            RaisedButton(
              onPressed: (){
                print(nameController.text);
                showDialog(context: context,
                  builder: (context){
                    return AlertDialog(
                      content: Text(nameController.text),
                    );
                  }
                );
              },
              child: Text('텍스트 변화 감'),)
          ],
        ),
      )
    );
  }
}
