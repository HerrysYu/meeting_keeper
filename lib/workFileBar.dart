import 'package:flutter/material.dart';
class workFileBartest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(child: wordkFileBar(country: "中国",title: "关于气候变暖的提议",content: "",),),
    );
    throw UnimplementedError();
  }
}
class wordkFileBar extends StatelessWidget{
  String country;
  String title;
  String content;
  wordkFileBar({
    required this.country,
    required this.title,
    required this.content
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 250,
      width: 500,
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("来自"+this.country+"代表团",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
            Text(this.title,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
          ],),
        ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 22,
                      offset: Offset(-1, 1),
                    )
                  ],
        color: Colors.white
      ),
      ),
    );
    throw UnimplementedError();
  }
}
