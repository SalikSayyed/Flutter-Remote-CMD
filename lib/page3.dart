import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text("INSTRUCTIONS",style: TextStyle(fontSize: 30,),textAlign: TextAlign.center,),
          Text("Setup any webserver on your host"),
          Text("Inside cgi-bin folder Set a python file as Below"),
          Text("-------------------------"),
          Text("#!C:\Users\salik\AppData\Local\Programs\Python\Python37\python.exe"),
            Text("print(\"Content-type: text/html\")"),
          Text("print(\" \")"),
          Text("import cgi"),
          Text("import subprocess"),
          Text("link = cgi.FieldStorage()"),
          Text("id = link[\"post\"].value"),

         Text("cmd=subprocess.getoutput(id)"),
          Text("print(\"<pre>\")"),
          Text("print(cmd)"),
          Text("print(\"<pre>\")"),
          Text("--------------------------"),
          Text("Put HostName as : http://ip-address/cgi-bin/filename.py?post"),

        ],
      ),
    );
  }
}
