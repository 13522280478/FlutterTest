import 'package:flutter/material.dart';
import 'package:flutter_navigator/FirstCreen.dart';
import 'package:flutter_navigator/SecondScreen.dart';

class ThreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('title'),
      ),
      body: new Column(
        children: <Widget>[
          new Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'first');
              },
              child: Text('第三个界面正常启动第一个界面的按钮'),
            ),
          ),
          new Center(
            child: RaisedButton(
              onPressed: () {
                //未声明的正常启动
                Navigator.push(context, MaterialPageRoute(builder: (context) => Second()));
              },
              child: Text('正常启动'),
            ),
          ),
          new Center(
            child: new RaisedButton(
              onPressed: () {
                //销毁所有的界面，并且跳转到first界面
                Navigator.pushNamedAndRemoveUntil(
                    context, 'first', (Route<dynamic> route) => false);
              },
              child: Text('销毁所有的界面，并且跳转到first界面'),
            ),
          ),
          new Center(
            child: new RaisedButton(
              onPressed: () {
                // 销毁除了 two 之外的所有界面
                Navigator.pushNamedAndRemoveUntil(context, 'two', ModalRoute.withName('two'));
              },
              child: Text('销毁除了 two 之外的所有界面'),
            ),
          ),
          new Center(
            child: RaisedButton(
              onPressed: () {
//                跳转并替换当前界面
                Navigator.pushReplacementNamed(context, "first");
              },
              child: Text('跳转并替换当前界面'),
            ),
          ),
          new Center(
            child: RaisedButton(
              onPressed: () {
//                跳转并销毁当前界面
                Navigator.popAndPushNamed(context, "first");
              },
              child: Text('跳转并销毁当前界面'),
            ),
          ),
          new Center(
            child: new RaisedButton(
              onPressed: () {

                Navigator.pop(context, '给你的返回值333');
              },
              child: Text('第三个界面的返回按钮'),
            ),
          ),
        ],
      ),
    );
  }
  // 第三次nn
}
