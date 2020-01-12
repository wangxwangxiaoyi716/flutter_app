
import 'package:flutter/material.dart';

/*import 'package:fluttertoast/fluttertoast.dart';*/

  void main() => runApp(lianxi());

class lianxi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.cyanAccent,

      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget{

  String title;
  @override
  Widget build(BuildContext context) {
    bool _switchSelected=true; //维护单选开关状态
    bool _checkboxSelected=false;//维护复选框状态
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(


        actions: <Widget>[
          //IconButton
          new IconButton(
            //图标
            icon: new Icon(Icons.add_a_photo),
            //提示
            tooltip: 'Add photo',
            //点击事件
            onPressed: () {},
          ),
          //菜单弹出按钮
          new PopupMenuButton<String>(
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<String>>[
                new PopupMenuItem<String>(
                    value: "one", child: new Text('扫一扫')),
                new PopupMenuItem<String>(
                    value: "two", child: new Text('摇一摇')),
              ];
            },
            //选择点击事件
            onSelected: (String action) {
              switch (action) {
                case "one":
                //增加点击逻辑
                  break;
                case "two":
                //增加点击逻辑
                  break;
              }
            },
          ),
        ],

    ),

      body:Column(
     crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //网络加载图片
            Image(
              image: NetworkImage(
                  "http://172.17.8.100/images/movie/stills/ws/ws1.jpg"),
              width: 100.0,
              height: 100.0,
            ),
             //本地图片
             new Image.asset('images/beijingtu.jpg',
              width: 200,
              height: 100,
            ),
            Text('Hello word!',
              //文字位置
              textAlign: TextAlign.left,
            ),

            //文字重复加载3次
            Text('Hello Flutter! '*9,
              //显示行数
              maxLines: 1,
              //文字溢出
              overflow: TextOverflow.ellipsis,
            ),
            Text('胡明明你真帅 ',
              //文字大小
              textScaleFactor: 1.5,
            ),
       RaisedButton.icon(
        icon: Icon(Icons.add_to_home_screen),
        label: Text("按钮"),
        
        //文字颜色白色
        colorBrightness: Brightness.dark,
        //点击是变色
        splashColor: Colors.black87,
        onPressed: () {

        },
      ),
       FlatButton(
        //点击是变色
        splashColor: Colors.black87,

        child: Text("按钮"),

         onPressed: () {},
       ),
        Image(
          image: new AssetImage("images/meinv.jpg"),
          width: 500,
          height: 100,
        ),
            Text('背景',

              style: TextStyle(
                //加粗
                fontWeight: FontWeight.bold,
                //字体颜色
                color: Colors.red,
                //背景色
                background: new Paint()..color=Colors.yellow,
                //行高
                height: 2.0,
                //字体大小
                fontSize: 16,
                //字与字之间的距离
                letterSpacing: 5.0,

              ),
            ),
            OutlineButton(
              child: Text("边框样式"),
              //两边圆角
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {},
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                 //labelText: "用户名",
                  hintText: "请输入内容",

                //  prefixIcon: Icon(Icons.person)
              ),
            ),
            /*Switch(
              value: _switchSelected,//当前状态
              onChanged:(value){
                //重新构建页面
                setState(() {
                  _switchSelected=value;
                });
              },
            ),*/
           /* Checkbox(
              value: _checkboxSelected,
              activeColor: Colors.red, //选中时的颜色
              onChanged:(value){
                setState(() {
                  _checkboxSelected=value;
                });
              },
            ),*/

          ],

        ),
      drawer: Drawer(
        child: ListView(
          //设置padding
          padding:EdgeInsets.zero,
          children: <Widget>[
        ListTile(
        //标题内容
        title: Text("查看"),
        //前置图标
        leading: new CircleAvatar(child:new Icon(Icons.scanner),),
      ),
      ListTile(
        //标题内容
        title: Text("条目内容"),
        //前置图标
        leading: new CircleAvatar(child:new Icon(Icons.list),),
      ),
      ListTile(
        //标题内容
        title: Text("计划走势"),
        //前置图标
        leading: new CircleAvatar(child:new Icon(Icons.score),),
      ),

          ],

        ),
      ),

    //  floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    //  floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: Container(
      //  margin: EdgeInsets.only(top: 90),
        child: FloatingActionButton.extended(
          /*onPressed : instates,*/
          tooltip: "按这么长时间干嘛",
          label: Text("button"),
          icon: Icon(Icons.add),
          foregroundColor: Colors.black87,
          backgroundColor: Colors.cyan,
          // shape: RoundedRectangleBorder(),
        ),

      ),
    );
  }

}
