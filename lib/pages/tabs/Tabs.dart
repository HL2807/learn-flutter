import 'package:flutter/material.dart';
import 'package:untitled1/pages/tabs/Category.dart';
import 'package:untitled1/pages/tabs/Setting.dart';
import 'package:untitled1/pages/tabs/home.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex=0;

  List _pageList=[
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: this._pageList[this._currentIndex],//渲染选中的页面

      bottomNavigationBar: BottomNavigationBar(//底部导航按钮

        currentIndex: this._currentIndex,
        onTap: (int index){//点击底部图标时有相应的变化,选中点击图标
          setState(() {//可以让软件重新渲染，改变状态
            this._currentIndex=index;
          });
        },
        iconSize: 35.0,//设置图标（icon）的大小
        fixedColor: Colors.red,//选中的颜色
        type: BottomNavigationBarType.fixed,//如果配置底部可以有多个按钮
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
              title: Text("首页")
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.category),
              title: Text("分类")
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.settings),
              title: Text("设置")
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.airplanemode_active),
          //   title: Text("飞行模式")
          // )
        ],
      ),
    );
  }
}