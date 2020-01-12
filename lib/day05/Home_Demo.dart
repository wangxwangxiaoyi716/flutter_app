
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home_demo_entity.dart';

void main() => runApp(LianDemo());
List list = new List();
List list2 = new List();
class LianDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
     title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primaryColor: Colors.cyanAccent,
      ),
      home: LianXiDemo(),
    );
  }
}

class LianXiDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("列表展示"),
      ),
      body: ListViewWidget(
          List<String>.generate(6, (i){
            return 'Item &i';
          })
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {

  final List<String> items;
  ListViewWidget(this.items);
  @override
  Widget build(BuildContext context) {
    dio_get();
    return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return new ListBody(
          children: <Widget>[
            photoWidget(HomeDemoEntity().result, index)
          ],
        );
      },
    );
  }
}
//dio get请求
dio_get() async{
  try{
    Response response;
    //等待返回response
    response = await Dio().get("http://172.17.8.100/movieApi/movie/v2/findHotMovieList?page=1&count=5");
    if(response.statusCode == 200){
      var string = response.data;
      var decode12 = json.decode(string);
      var depart = new HomeDemoEntity().fromJson(decode12);
      var string2 = depart.runtimeType.toString();
      depart.result.length;
      for (var i = 0; i < depart.result.length; i++) {
        list.add(depart.result[i].imageUrl);
        print(depart.result[i].imageUrl);
      }
      for (var i = 0; i < depart.result.length; i++) {
        list2.add(depart.result[i].name);
      }
    }else{
      print("error");
    }
  }catch(e){
    print(e);
  }
}

Widget photoWidget(List<HomeDemoResult> resultLists, int index) {
  return Card(
    child: Container(
      width: 200,
      height: 300,
      child: Column(
        children: <Widget>[
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image.network(
                  list[index]
              ),
            ),
          ),
          Text(
            list2[index].toString(),
          ),
        ],
      ),

    ),
  );
}

