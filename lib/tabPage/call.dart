
import 'package:flutter/material.dart';

class Call extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => CallState();
}

class CallState extends State<Call>{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text("Calls",style: TextStyle(fontSize: 20.0))
    );
  }

}