import 'package:flutter/material.dart';
import 'package:flutter_navigator/SecondScreen.dart';

class FirstScreen extends StatelessWidget {

  String title ;
  FirstScreen(String k){
    this.title = k;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('First page'+title),
        ),
        body: new Column(
          children: <Widget>[
            new Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Second()));
                },
                child: Text('我的第一个界面进行跳转'),
              ),
            ),
            new Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('我的第一个界面返回'),
              ),
            )
          ],
        )
//      new Center(
//        child: RaisedButton(onPressed: (){
//          print('我的第一个界面');
//          Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
//
//        },
//          child: Text("go to 2nd page"),
//        ),
//
//      ),
        );
  }
}
