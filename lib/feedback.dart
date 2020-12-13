import 'package:flutter/material.dart';

import 'main.dart';
class feedback extends StatefulWidget {
  @override
  _feedbackState createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  TextEditingController feedback=new TextEditingController();
  TextEditingController email=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: new IconButton(
            icon: new Icon(Icons.keyboard_backspace,size: 35,color: Colors.blue,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text('Feedback',style: TextStyle(fontSize: 20.0,color: Colors.black),),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(2.0),
                child: IconButton(
                  icon: Icon(Icons.send),
                  color: Colors.blue,
                  iconSize: 35,
                  splashColor: Colors.pink,
                  onPressed: (){
                    Route route=MaterialPageRoute(builder: (context) => MyApp());
                    Navigator.push(context, route);
                  },
                ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/7,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  autocorrect: true,
                  controller: feedback,
                  decoration: InputDecoration(
                    hintText: "Your Feedback",
                    border:InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/7,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  autocorrect: true,
                  controller: email,
                  decoration: InputDecoration(
                    hintText: "Your email",
                    border:InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
