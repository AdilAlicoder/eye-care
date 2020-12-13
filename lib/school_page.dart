import 'package:flutter/material.dart';
class school_page extends StatefulWidget {
  @override
  _school_pageState createState() => _school_pageState();
}

class _school_pageState extends State<school_page> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          leading: new IconButton(
            icon: new Icon(Icons.keyboard_backspace,size: 35,color: Colors.blue,),
            onPressed: (){
             Navigator.pop(context);
            },
          ),
          title: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text('Learn',style: TextStyle(fontSize: 20.0,color: Colors.black),),
          ),
        ),
        body: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
             width: MediaQuery.of(context).size.width/1.1,
              height: MediaQuery.of(context).size.height/5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('KALEIDOSCOPE',style: TextStyle(fontSize: 22,color: Colors.blue),),
                  SizedBox(height: 15,),
                  Text('Relaxes the eyes & strenghtense the eye focus',style: TextStyle(fontSize: 15,color: Colors.grey),),
                  SizedBox(height: 15,),
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 53,
                    color: Colors.blue,
                    child: Center(
                      child:RaisedButton(
                        color: Colors.blue,
                        child: Center(
                          child: Text('Try now',style: TextStyle(fontSize: 20,color: Colors.white),),
                        ),
                      )
                    ),
                  )
                ],
              ),
              ),
          ),
        ),
        ),
    );
  }

}
