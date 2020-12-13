import 'package:eye_care/catagerios_show.dart';
import 'package:eye_care/pageview.dart';
import 'package:eye_care/school_page.dart';
import 'package:flutter/material.dart';
import 'account.dart';
import 'cetagerios.dart';
class bottomappbar extends StatefulWidget {
  @override
  _bottomappbarState createState() => _bottomappbarState();
}

class _bottomappbarState extends State<bottomappbar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      elevation: 4.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            splashColor: Colors.black,
            highlightColor: Colors.blue,
            iconSize: 27.0,
            icon: Icon(
                Icons.home
            ),
            onPressed: (){},
          ),
          IconButton(
            iconSize: 27.0,
            icon: Icon(
                Icons.list
            ),
            onPressed: (){
              Route route=MaterialPageRoute(builder: (context) => pageview());
              Navigator.push(context, route);
            },
          ),
          IconButton(
            iconSize: 27.0,
            icon: Icon(
                Icons.school
            ),
            onPressed: (){
              Route route=MaterialPageRoute(builder: (context) => catagerios_show());
              Navigator.push(context, route);
            },
          ),
          IconButton(
            iconSize: 27.0,
            icon: Icon(
                Icons.account_circle
            ),
            onPressed: (){
              Route route=MaterialPageRoute(builder: (context) => account());
              Navigator.push(context, route);
            },
          ),
        ],
      ),
    );
  }
}