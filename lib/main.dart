import "package:flutter/material.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'page1.dart';
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(FireApp());
}
class FireApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
   return MaterialApp(
      title: "Run Your Commands",
      initialRoute: '/page1',
      routes: <String, WidgetBuilder>{
        '/page1': (BuildContext ctx) => Page1(),
        //'/page2': (BuildContext ctx) => Page2(),
        //'/page3': (BuildContext ctx) => Page3(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
