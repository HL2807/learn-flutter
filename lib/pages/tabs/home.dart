import 'package:flutter/material.dart';
import '../Search.dart';
class HomePage extends StatefulWidget {//动态组件
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到搜索页面"),
          onPressed: (){//写要重新渲染的页面
            //路由跳转，也叫页面跳转
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context)=>SearchPage()
              )
            );

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 20),

      ],
    );
  }
}
