
import 'package:flutter/material.dart';
import 'package:whatsup/rawData.dart';

class Chat extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ChatState();
}

class ChatState extends State<Chat>{
  @override
  Widget build(BuildContext context) {
     return ListView.builder(
         itemCount: dummyData.length,
         itemBuilder: (context,i)=>Column(
         children: [
           Divider(height: 10,),
           ListTile(
             leading: CircleAvatar(
               foregroundColor: Theme.of(context).primaryColor,
               backgroundColor: Colors.grey,
               backgroundImage: NetworkImage(dummyData[i].avatarUrl),
             ),
             title: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(dummyData[i].name, style: new TextStyle(fontWeight: FontWeight.bold),),
                 Text(dummyData[i].time,style: new TextStyle(color: Colors.grey, fontSize: 14.0)),
               ],
             ),
             subtitle: Container(
               padding: EdgeInsets.only(top:5.0),
               child:Text(dummyData[i].message,style: new TextStyle(color: Colors.grey, fontSize: 15.0)) ,
             ),
           )
         ],
       ),
     );
  }

}