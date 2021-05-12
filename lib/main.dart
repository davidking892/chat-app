import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsup/tabPage/camera.dart';
import 'package:whatsup/tabPage/status.dart';
import 'package:whatsup/tabPage/call.dart';
import 'package:whatsup/tabPage/chat.dart';

List<CameraDescription> cameras;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras=await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  TabController _tabController;
  bool showFab=true;

  @override
  void initState() {
    super.initState();

    _tabController=TabController(vsync: this,initialIndex: 1,length: 4);
    _tabController.addListener(() {
       print(_tabController.index);
       if(_tabController.index==1){
         showFab=true;
       }else{
         showFab=false;
       }
       setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "Chat"),
            Tab(text: "Status"),
            Tab(text:"Call")
          ],
        ),
        actions: [
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Camera(cameras),
          Chat(),
          Status(),
          Call()
        ],
      ),
     floatingActionButton: showFab ? FloatingActionButton(
       backgroundColor: Theme.of(context).accentColor,
       child: Icon(
         Icons.message,
         color:Colors.white
       ),
       onPressed: ()=>print("open chats"),
     ):null ,
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
