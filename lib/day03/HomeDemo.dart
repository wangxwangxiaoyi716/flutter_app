

import 'package:flutter/material.dart';

void main() => runApp(lianxidemo());

class lianxidemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          /*   primaryColor: Colors.amber*/
          ),
      home: MyDemo(
        title: '王晓义',
      ),
    );
  }
}

class MyDemo extends StatefulWidget {
  final String title;

  MyDemo({Key key, this.title}) : super(key: key);

  MyState createState() => MyState();
}





class MyState extends State<MyDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '王晓义',
        ),
        //前置图标
        leading: Icon(Icons.home),
        //背景
        backgroundColor: Colors.red,
        //标题居中
        centerTitle: true,

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_a_photo),
            //提示
            tooltip: "我是相机",
            //点击事件
            onPressed: () {},
          ),
          //菜单弹出按钮
          PopupMenuButton<String>(itemBuilder: (BuildContext context) {
            return <PopupMenuItem<String>>[
              PopupMenuItem<String>(
                value: "one",
                child: Text('This one'),
              ),
              PopupMenuItem<String>(
                value: "two",
                child: Text('This two'),
              ),
            ];
          },
              //选择点击事件
              onSelected: (String action) {
            switch (action) {
              case "one":
                child:
                Text('This one');
                break;
              case "two":
                child:
                Text('This two');
                break;
            }
          }),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 255),
        child: Text(
          'Hello,Flutter',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 14,
            //字体加粗
            fontWeight: FontWeight.bold,
          ),
        ),





      ),


      //侧滑
      drawer: Drawer(
        child: ListView(
          //设置padding
          padding: EdgeInsets.zero,
          children: <Widget>[
            //替换header
            //userHeader
            ListTile(
              //标题内容
              title: Text("one"),
              //设置图标
              leading: CircleAvatar(
                child: Icon(Icons.scanner),
              ),
            ),
            ListTile(
              title: Text("two"),
              leading: CircleAvatar(
                child: Icon(Icons.list),
              ),
            ),
            ListTile(
              title: Text("three"),
              leading: CircleAvatar(
                child: Icon(Icons.score),
              ),
            ),
          ],
        ),
      ),
    );
  }
}