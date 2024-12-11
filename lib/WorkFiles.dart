import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meeting_keeper/login.dart';
import 'package:meeting_keeper/workFileBar.dart';

StreamController FilesStream =new StreamController.broadcast();

class WorkFilesPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => WorkFilesPageState();
}

class WorkFilesPageState extends State<WorkFilesPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: FilesStream.stream,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Column(children: [
              for(var item in WorkFiles)
              wordkFileBar(content:item.content,country:item.nation,title:item.title)
            ],);
          },
        ),
      ),
    );
    throw UnimplementedError();
  }
}