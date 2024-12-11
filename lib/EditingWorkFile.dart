import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meeting_keeper/buttomColumn.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
class EditingPage extends StatefulWidget{
  @override
  State<EditingPage> createState() => _EditingPageState();
}
TextEditingController titlecontroller=new TextEditingController();
TextEditingController contentcontroller=new TextEditingController();
class _EditingPageState extends State<EditingPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),actions: [IconButton(onPressed: ()async{
        uploadWordFile(Nation, titlecontroller.text, contentcontroller.text);
      }, icon: Icon(Icons.upload))],),
      body: Column(
        children: [
          Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("用户："+Nation+"代表"+Name,style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),)
        ),
          Padding(
          padding:  EdgeInsets.all(10),
          child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              controller: titlecontroller,
              decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  hintText: '议题如下：',
                  border: InputBorder.none),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
          Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              controller: contentcontroller,
              decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  hintText: '内容如下:',
                  border: InputBorder.none),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
Future<http.Response> uploadWordFile(String nation,String title, String content) {
  return http.post(
    Uri.parse('http://118.89.124.13:2333/workfile'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'country': nation,
      'content':content,
      'title':title,
    }),
  );
}
