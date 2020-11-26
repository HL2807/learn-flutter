import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;
  FormPage({this.title="表单"});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(//右下角浮动按钮
        child: Text("返回"),
        onPressed: (){
          Navigator.of(context).pop();

        },
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("我是表单页面1"),
          ),
          ListTile(
            title: Text("我是表单页面2"),
          ),
          ListTile(
            title: Text("我是表单页面3"),
          ),
          ListTile(
            title: Text("我是表单页面4"),
          ),
        ],
      ),
    );
  }
}
