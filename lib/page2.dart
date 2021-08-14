import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:math';
var fsconnect = FirebaseFirestore.instance;
var d;
myg() async{
  d= await fsconnect.collection("commands").orderBy("time",descending: true).get();
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}
class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    myg();
    List colors = [Colors.red, Colors.purpleAccent,Colors.white,Colors.amber, Colors.yellow,Colors.orange,Colors.white];
    Random random = new Random();
    var indi = random.nextInt(10);
    setState(() { myg(); return indi = random.nextInt(colors.length);});
    return Container(
      height: 800,
      width: 800,
      color: Colors.green,
      child:ListView.builder(
        itemCount: d.docs.length,
        itemBuilder: (BuildContext context, int index){
          return AnimatedContainer(color: colors[(index+indi)%colors.length],
            duration: Duration(seconds: 2),
            padding: EdgeInsets.all(30),
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(children: <Widget>[

                Text("TIME: ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,fontFamily: "Cursive",color: Colors.black),textAlign: TextAlign.center,),Text(d.docs[index].data()["time"].toString(),textAlign: TextAlign.center,),
                Text(d.docs[index].data()["cmd"],style: TextStyle(color:Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                Text(d.docs[index].data()["cmdoutput"],textAlign: TextAlign.left,style: TextStyle(fontFamily: "Arial"),),
              ],),
            ),
          );
        },
      ),
      );
  }

}

