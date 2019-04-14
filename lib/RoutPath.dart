import 'package:flutter_navigator/FirstCreen.dart';
import 'package:flutter_navigator/SecondScreen.dart';
import 'package:flutter_navigator/ThreeScreen.dart';

const first = 'first';
const two = 'two';
const three = 'three';

var RoutPath ={
  "$first":(context)=>  FirstScreen("AAAAA"),
  "$two":(context)=>  Second(),
  "$three":(context)=>  ThreeScreen(),
};