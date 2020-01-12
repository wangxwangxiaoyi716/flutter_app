import 'package:flutter/material.dart';
/*import 'package:fluttertoast/fluttertoast.dart';*/
void main() => runApp(HomeLian());

class HomeLian extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
      ),
      home: MyLianXi(),
    );
  }
}

class MyLianXi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('义总'),
      ),
      //左侧抽屉
      drawer:Drawer(
        //添加一个空的ListView
        child:ListView(),
      ),
      body: Column(
        children: <Widget>[
          Text('Hello 胡明明'),
          Text('Hello 王晓义'),
          Image(
            image: AssetImage('images/meinv.jpg'),
            width: 200,
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Image(
            image: NetworkImage(
                "http://172.17.8.100/images/movie/stills/sndn/sndn1.jpg"),
            width: 200,
            height: 200,
          ),
          //标题栏
          titleWidget,
          //按钮栏
          buttonWidget,
          //文本栏
          textWidget,
        ],
      ),
    );
  }
}

//实现标题栏
Widget titleWidget = new Container(
  //内边距
  padding:const EdgeInsets.all(30.0),
  //整体是一个水平的布局
  child:new Row(
    //只有一个孩子
    children: <Widget>[
      //用Expanded 会占用icon之外剩余空间
      new Expanded(
        //垂直布局 放置两个文本
        child: new Column(
          //设置文本一起始端对齐
          crossAxisAlignment: CrossAxisAlignment.start,
          //有两个孩子
          children: <Widget>[
            new Container(
              //底部内边距
              padding:const EdgeInsets.only(bottom:10.0),
              //孩子 设置字体样式
              child:new Text(
                '天气真好',
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            new Text(
              '胡明明你太帅了',
              style: new TextStyle(
                color:Colors.grey[450],//设置颜色透明度
              ),
            )
          ],
        ),
      ),
      new Icon(
        Icons.star,
        color:Colors.red[400],
      ),

      new Text(''),
    ],
  ),
);

Column getText(IconData icon,String text){
  return new Column(
    //聚集widgets
    mainAxisSize:MainAxisSize.min,
    //child居中
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      new Icon(icon,color:Colors.blue[500]),
      new Container(
        //上部外边距
        margin: const EdgeInsets.only(top:8.0),
        //Text内容样式设定
        child:new Text(
          text,
          style:new TextStyle(
            color:Colors.blue[500],
          ),
        ),
      )
    ],

  );

}

/**
 * 按钮实现
 */
Widget buttonWidget = new Container(
  //三列
  child:new Row(
    //用MainAxisAlignment.spaceEvenly平均分配子空间
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //孩子们
    children: <Widget>[
      getText(Icons.call, "电话"),
      getText(Icons.near_me, "地图"),
      getText(Icons.share, "分享"),
    ],
  ),
);

Widget textWidget = new Container(
  alignment: Alignment.center,
  //设置内边距
  padding:const EdgeInsets.all(10.0),
  child:new Text(
    'hello，胡明明 '
    // softWrap: true,//属性表示文本是否应在软换行符（例如句点或逗号）之间断开。
    // textAlign: TextAlign.center,
  ),

);
