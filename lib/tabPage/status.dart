
import 'package:flutter/material.dart';
import 'package:whatsup/pages/story.dart';

class Status extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Container(
        color:Color(0xfff2f2f2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2020/09/25/06/07/portrait-5600556__340.jpg"
                      )),
                      Positioned(
                        bottom: 0.0,
                        right: 1.0,
                        child: Container(
                          height: 20,
                          width: 20,
                          child:Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle
                          ),
                        ),
                      )
                    ],
                  ),
                  title: Text( "My Status",style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("Tap to add status update"),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Viewed updates", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
            ),
            Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.white,
                  child: ListView(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                            backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2021/05/04/10/21/water-lily-6228200__340.jpg"),
                        ),
                        title: Text("Pawan Kumar",  style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text("Today, 20:16 PM"),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Story())),
                      ),
                    ],
                  ),
                )
            )
          ],
        ),
     );
  }

}