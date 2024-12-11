import 'dart:async';  

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meeting_keeper/EditingWorkFile.dart';
import 'package:meeting_keeper/WorkFiles.dart';
import 'package:meeting_keeper/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
String Nation="";
String Name="";
class Buttomcolumnfirst extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(children: [
      Padding(padding: EdgeInsets.all(30), child: ElevatedButton(onPressed: ()async{
        valueUpdate();
        Navigator.push(context,MaterialPageRoute(builder: (context)=>EditingPage()));
      }, child: SizedBox(height:200,width:200, child: Center(child: Container(clipBehavior: Clip.hardEdge,decoration:BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10))), child: Text("工作文件写作")))))),
      Padding(padding: EdgeInsets.all(30), child: ElevatedButton(onPressed: ()async{
       await getWorkFile();
       Navigator.push(context,MaterialPageRoute(builder: (context)=>WorkFilesPage()));
      }, child: SizedBox(height:200,width:200, child: Center(child: Container(clipBehavior: Clip.hardEdge,decoration:BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10))), child: Text("工作文件查阅")))))),
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
class Buttomcolumnthird extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(children: [
      Padding(padding: EdgeInsets.all(30), child: ElevatedButton(onPressed: ()async{
        valueUpdate();
        Navigator.push(context,MaterialPageRoute(builder: (context)=>EditingPage()));
      }, child: SizedBox(height:200,width:200, child: Center(child: Container(clipBehavior: Clip.hardEdge,decoration:BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10))), child: Text("工作文件写作")))))),
      Padding(padding: EdgeInsets.all(30), child: ElevatedButton(onPressed: (){}, child: SizedBox(height:200,width:200, child: Center(child: Container(clipBehavior: Clip.hardEdge,decoration:BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10))), child: Text("工作文件查阅")))))),
    ],
    mainAxisAlignment: MainAxisAlignment.center,);
    throw UnimplementedError();
  }
}
class Buttomcolumnforth extends StatelessWidget{
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
valueUpdate()async{
  final perf = await SharedPreferences.getInstance();
  Nation = perf.getString('country')??"";
  Name = perf.getString('name')??"";
}