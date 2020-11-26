import 'package:flutter/material.dart';
import 'pages/tabs/Tabs.dart';
import 'pages/tabs/home.dart';
import 'pages/tabs/Setting.dart';
import 'pages/tabs/Category.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:Tabs()
    );
  }
}



