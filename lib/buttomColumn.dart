import 'dart:async';  

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Buttomcolumnfirst extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(children: [
      Padding(padding: EdgeInsets.all(30), child: ElevatedButton(onPressed: (){}, child: SizedBox(height:200,width:200, child: Center(child: Container(clipBehavior: Clip.hardEdge,decoration:BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10))), child: Text("工作文件写作")))))),
      Padding(padding: EdgeInsets.all(30), child: ElevatedButton(onPressed: (){}, child: SizedBox(height:200,width:200, child: Center(child: Container(clipBehavior: Clip.hardEdge,decoration:BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10))), child: Text("工作文件查阅")))))),
    ],
    mainAxisAlignment: MainAxisAlignment.center,);
    throw UnimplementedError();
  }
}
class Buttomcolumnsecond extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(children: [
      Padding(padding: EdgeInsets.all(30), child: ElevatedButton(onPressed: (){}, child: SizedBox(height:200,width:200, child: Center(child: Container(clipBehavior: Clip.hardEdge,decoration:BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10))), child: Text("发起决议草案")))))),
      Padding(padding: EdgeInsets.all(30), child: ElevatedButton(onPressed: (){}, child: SizedBox(height:200,width:200, child: Center(child: Container(clipBehavior: Clip.hardEdge,decoration:BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10))), child: Text("决议草案查阅")))))),
    ],
    mainAxisAlignment: MainAxisAlignment.center,);
    throw UnimplementedError();
  }
}