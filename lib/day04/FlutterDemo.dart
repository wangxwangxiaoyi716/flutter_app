
import 'package:flutter/material.dart';

void main() => runApp(MyPresen());

class MyPresen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: MyPresenter(),
    );
  }
}

class MyPresenter extends StatelessWidget{

  final List<Tab> list = <Tab>[
    Tab(text: "首页",),
    Tab(text: "信息",),
    Tab(text: "圈子",),
    Tab(text: "购物车",),
    Tab(text: "我的",),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: list.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('王晓义'),
            bottom: TabBar(
              controller: DefaultTabController.of(context),
              labelColor: Colors.red,
              unselectedLabelColor: Colors.blue,
              indicatorColor:Colors.cyanAccent,
              tabs: list,
              isScrollable: true,
            ),
          ),
          body: TabBarView(
            children: list.map((Tab tab) {
              return new Center(child: Image.asset('images/meinv.jpg'));
            }).toList(),
          ),
        ),
    );
  }
}