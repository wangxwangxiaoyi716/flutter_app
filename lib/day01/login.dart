
import 'package:flutter/material.dart';

void main() => runApp(login());

class login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: '义总Flutter',),
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage ({Key key,this.title}) : super(key : key);

  String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();


}

class _MyHomePageState extends  State<MyHomePage>{

  int _counter = 0;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '胡总你太giao了',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 90),
       child: FloatingActionButton(
         onPressed: _incrementCounter,
         tooltip: '胡总',
         child: Icon(Icons.add),
         backgroundColor: Colors.amber,
       ),

      ),
    );
  }
}