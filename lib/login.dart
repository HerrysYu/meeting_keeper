import 'dart:async';
import 'dart:convert';  

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:meeting_keeper/WorkFiles.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class addpage extends StatefulWidget{
  const addpage({super.key});

  @override
  State<StatefulWidget> createState() => addpagestate();

}
TextEditingController ctController=TextEditingController();
TextEditingController nmController=TextEditingController();
class addpagestate extends State<addpage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back)),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('欢迎加入系统',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
            SizedBox(
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: ctController,
                      decoration: const InputDecoration(border: InputBorder.none),
                    ),
                  )),
              ),
            ),
            SizedBox(
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: nmController,
                      decoration: const InputDecoration(border: InputBorder.none),
                    ),
                  )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: ()async{
                final prefs = await SharedPreferences.getInstance();
                await prefs.setString('country', ctController.text);
                await prefs.setString('name', nmController.text);
              }, child: const Icon(Icons.add)),
            )
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

}

class workFile{
  String nation;
  String title;
  String content;
  workFile({
    required this.nation,
    required this.title,
    required this.content
  });
}
List<workFile> WorkFiles=[];
Future getWorkFile()async{
  WorkFiles=[];
  final response = await http
      .get(Uri.parse('http://118.89.124.13:2333/getallworkfile'));
  final a=jsonDecode(Utf8Decoder().convert(response.bodyBytes),);
  for(var item in a){
    print(item[2]);
    WorkFiles.add(workFile(nation: item[1].toString(), title: item[0].toString(), content: item[2].toString()));
  }
  FilesStream.add("");
}
