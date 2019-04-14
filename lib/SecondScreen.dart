import 'package:flutter/material.dart';
import 'package:flutter_navigator/RoutPath.dart';
import 'package:flutter_navigator/ThreeScreen.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('${this} hashcode=${this.hashCode}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: new Column(
        children: <Widget>[
          Center(
            child: RaisedButton(
              onPressed: () {
                print("点击第二个界面的按钮");
                Navigator.pushNamed(context, 'three').then((Object o) {
                  print('我收到的返回值$o');
                });
              },
              child: Text('this is 2and page'),
            ),
          ),
          Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('我的第二个界面返回按钮'),
            ),
          ),
        ],
      ),
    );
  }
}
