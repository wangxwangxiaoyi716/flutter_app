import 'package:flutter/material.dart';

void main() => runApp(HomeFile());

class HomeFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(
        title: '义总',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            //字体
            Text(
              "Hello world",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,
                  fontFamily: "Courier",
                  background: new Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
            Text(
              "Hello world! I'm Jack. ",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Hello world",
              textScaleFactor: 1.5,
            ),

            //按钮
            RaisedButton(
              child: Text("按钮1"),
              onPressed: () {},
            ),

            FlatButton(
              child: Text("按钮2"),
              onPressed: () {},
            ),

            OutlineButton(
              child: Text("按钮3"),
              onPressed: () {},
            ),

            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {},
            ),

            RaisedButton.icon(
              icon: Icon(Icons.send),
              label: Text("发送"),
              onPressed: () {},
            ),


          ],
        ),
      ),
    );
  }
}
