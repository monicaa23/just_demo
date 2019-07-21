

import 'package:flutter/material.dart';

main(){
  TextEditingController FirstnameController=TextEditingController();
  TextEditingController LastnameController=TextEditingController();
  runApp(MaterialApp(
    title: "first App",
    home: Scaffold(
      appBar: AppBar(title: Text("first app"),),
      body: Center(child:Column(children: <Widget>[
        Text("hello world"),
        Text("hello world"),
        //class RandomWordsState1
        Padding(
          padding: EdgeInsets.all(15.0),
        child: TextField(
          textDirection: TextDirection.ltr,
          controller: FirstnameController,
          decoration:InputDecoration(
            border:OutlineInputBorder(
              borderRadius:BorderRadius.circular(5)
            ),
            labelText: "first name Label",
            hintText:"last name Label",
          ),
          onChanged: (String text){
            debugPrint("Text from input:$text");
          },
        ),),
Padding(
          padding: EdgeInsets.all(15.0),
        child: TextField(
          textDirection: TextDirection.ltr,
          controller: LastnameController,
          decoration:InputDecoration(
            border:OutlineInputBorder(
              borderRadius:BorderRadius.circular(5)
            ),
            labelText: "last name Label",
            hintText:"last name Label",
          ),
          onChanged: (String text){
            debugPrint("Text from input:$text");
          },
        )),
        RaisedButton(padding: EdgeInsets.all(15.0),
        child: Text("save"),
        onPressed:(){
          debugPrint("first name:${FirstnameController.text},${LastnameController.text}");
        }

        )
      ],)
        
      )
  ) 
  ));
}