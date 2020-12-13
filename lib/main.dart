
import 'package:flutter/material.dart';
import 'bottomappbar.dart';
import 'setting.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(context),
    );
  }

  homebody() {
    return Padding(
      padding: EdgeInsets.only(top: 40.0),
      child: Center(child: Container(
        child: Column(
          children: [
            Text('Afternoon Training',style: TextStyle(fontSize: 25,color: Colors.white),),
            Image(
              width: 210,
              height: 210,
              image: AssetImage('images/sun.png'),
            ),
            Text('today',style: TextStyle(color: Colors.white,fontSize: 17),),
            Padding(
              padding: EdgeInsets.only(top:15.0),
              child: Text('3pm-8pm for 7 min',style: TextStyle(color: Colors.white,fontSize: 17),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Container(
                width: 230,
                height: 50,
                child: RaisedButton(
                  onPressed: (){},
                  child: Text('Begin Training',style: TextStyle(fontSize: 21,color: Colors.blueAccent),),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  home(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        title: Padding(
          padding: const EdgeInsets.all(1.0),
          child: new Text('Daily Training',style: TextStyle(fontSize: 20.0),),
        ),
        actions: <Widget>[
          InkWell(
            onTap: (){
              Route route=MaterialPageRoute(builder: (context) => setting());
              Navigator.push(context, route);
            },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                Icons.settings,size: 30,color: Colors.white,),
              ),
          ),
        ],
      ),
      bottomNavigationBar: bottomappbar(),
      body: homebody(),
    );
  }
}