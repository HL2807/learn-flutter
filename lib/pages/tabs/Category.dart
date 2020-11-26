import 'package:flutter/material.dart';
import '../Form.dart';
//分类页面
class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到表达页面并传值"),
          onPressed: (){
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context)=>FormPage()
            //   )
            // );
            //两者是一样的
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context){
                  return FormPage(title: "我是跳转传值!");
                }
              )
            );

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        )
      ],
    );
  }
}
