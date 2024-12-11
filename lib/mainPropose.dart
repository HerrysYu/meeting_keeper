import 'package:flutter/material.dart';
import 'package:meeting_keeper/buttomColumn.dart';
class mainProposePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => mainproposepagestate();
}
class mainproposepagestate extends State<mainProposePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             ElevatedButton(onPressed: (){
            }, child: SizedBox(height:200,width:200, child: Center(child: Container(clipBehavior: Clip.hardEdge,decoration:BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10))), child: Text("发起动议"))))),
            Buttomcolumnthird(),
            Buttomcolumnforth(),
            ElevatedButton(onPressed: (){
            }, child: SizedBox(height:200,width:200, child: Center(child: Container(clipBehavior: Clip.hardEdge,decoration:BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10))), child: Text("发起动议")))))
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}