import 'package:flutter/material.dart';
class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("我是一个文本！"),
        ),
        ListTile(
          title: Text("我是一个文本1！"),
        ),
        ListTile(
          title: Text("我是一个文本2！"),
        ),
        ListTile(
          title: Text("我是一个文本3！"),
        ),
      ],
    );
  }
}