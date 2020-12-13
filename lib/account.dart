import 'package:eye_care/profile_click.dart';
import 'package:eye_care/setting.dart';
import 'package:eye_care/traing_plans.dart';
import 'package:flutter/material.dart';
import 'about.dart';
import 'faq.dart';
import 'feedback.dart';
class account extends StatefulWidget {
  @override
  _accountState createState() => _accountState();
}

class _accountState extends State<account> {
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
            child: Text('Account',style: TextStyle(fontSize: 20.0,color: Colors.black),),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Route route=MaterialPageRoute(builder: (context) => profile_click());
                    Navigator.push(context, route);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    title: Text("My Profile",style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  endIndent: 10,
                  indent: 10,
                ),
                InkWell(
                  onTap: (){
                    Route route=MaterialPageRoute(builder: (context) => traing_plans());
                    Navigator.push(context, route);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.description,
                      size: 30,
                      color: Colors.blue,
                    ),
                    title: Text("Training Plans",style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.games,
                    size: 30,
                    color: Colors.yellow,
                  ),
                  title: Text("Games",style: TextStyle(fontWeight: FontWeight.w600),),
                ),
                InkWell(
                  onTap: (){
                    Route route=MaterialPageRoute(builder: (context) => setting());
                    Navigator.push(context, route);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      size: 30,
                      color: Colors.black,
                    ),
                    title: Text('Setting',style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  endIndent: 10,
                  indent: 10,
                ),
                ListTile(
                  leading: Icon(
                    Icons.school,
                    size: 30,
                    color: Colors.cyan,
                  ),
                  title: Text('Learn',style: TextStyle(fontWeight: FontWeight.w600),),
                ),
                ListTile(
                  leading: Icon(
                    Icons.score,
                    size: 30,
                    color: Colors.indigoAccent,
                  ),
                  title: Text('Science',style: TextStyle(fontWeight: FontWeight.w600),),
                ),
                Divider(
                  color: Colors.grey,
                  endIndent: 10,
                  indent: 10,
                ),
                InkWell(
                  onTap: (){
                    Route route=MaterialPageRoute(builder: (context) => feedback());
                    Navigator.push(context, route);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.send,
                      size: 30,
                      color: Colors.blue,
                    ),
                    title: Text('Send Feedback',style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.share,
                    size: 30,
                    color: Colors.orange,
                  ),
                  title: Text('Share',style: TextStyle(fontWeight: FontWeight.w600),),
                ),
                ListTile(
                  leading: Icon(
                    Icons.star,
                    size: 30,
                    color: Colors.yellow,
                  ),
                  title: Text('Rate',style: TextStyle(fontWeight: FontWeight.w600),),
                ),
                Divider(
                  color: Colors.grey,
                  endIndent: 10,
                  indent: 10,
                ),
                InkWell(
                  onTap: (){
                    Route route=MaterialPageRoute(builder: (context) => faq());
                    Navigator.push(context, route);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.chat,
                      size: 30,
                      color: Colors.cyan,
                    ),
                    title: Text('FAQ',style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Route route=MaterialPageRoute(builder: (context)=> about());
                    Navigator.push(context, route);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.remove_red_eye,
                      size: 30,
                      color: Colors.deepOrange,
                    ),
                    title: Text('About',style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  endIndent: 10,
                  indent: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
