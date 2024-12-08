import 'package:flutter/material.dart';
import 'package:meeting_keeper/buttomColumn.dart';
import 'package:meeting_keeper/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>addpage()));
      }, icon: Icon(Icons.login)),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Buttomcolumnfirst(),
            Buttomcolumnsecond(),
            ElevatedButton(onPressed: (){}, child: SizedBox(height:200,width:200, child: Center(child: Container(clipBehavior: Clip.hardEdge,decoration:BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10))), child: Text("发起动议")))))
          ],
        )
      ),
    );
  }
}
