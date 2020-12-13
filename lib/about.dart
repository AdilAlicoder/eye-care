import 'package:eye_care/account.dart';
import 'package:flutter/material.dart';
class about extends StatelessWidget {
 // BuildContext contex;
  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () {
        print('ali');
       // Navigator.pop(context);
        Route route=MaterialPageRoute(builder: (context) => account());
        Navigator.push(context, route);
        return new Future(() => false);
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
            child: Text('About',style: TextStyle(fontSize: 20.0,color: Colors.black),),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image(
            image: AssetImage('images/about.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }


}
