import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';
class eye_issue extends StatefulWidget {
  @override
  _eye_issueState createState() => _eye_issueState();
}

class _eye_issueState extends State<eye_issue> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }
  @override
  Color no,long,short,amd,cata,drye,rede,pink,glau,lazy,stra,othe;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 70.0),
                  child: Text('Eye Issue',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w600),),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Text('Specify your eye condition to help us \n suggest useful information',style: TextStyle(fontSize: 17.0),),
                ),
                SizedBox(height: 35.0,),
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height/3,
                    width: MediaQuery.of(context).size.width/1.2,
                    child: ListView(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white54)
                          ),
                          width: MediaQuery.of(context).size.width/1.3,
                          height: 50.0,
                          child: RaisedButton(
                            color:no,
                            child: Center(child: Text('No Problem',style: TextStyle(fontSize: 17),)),
                            onPressed: (){
                              problem();
                            },
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white38)
                          ),
                          width: MediaQuery.of(context).size.width/1.3,
                          height: 50.0,
                          child: RaisedButton(
                            color:long,
                            onPressed: (){
                              longs();
                            },
                            child: Center(child: Text('Longsightedness',style: TextStyle(fontSize: 17),)),

                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white38)
                          ),
                          width: MediaQuery.of(context).size.width/1.3,
                          height: 50.0,
                          child: RaisedButton(
                            color:short,
                            onPressed: (){
                              shorts();
                            },
                            child: Center(child: Text('Shortsightedness',style: TextStyle(color: Colors.black,fontSize: 17.0),)),
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white38)
                          ),
                          width: MediaQuery.of(context).size.width/1.3,
                          height: 50.0,
                          child: RaisedButton(
                            color:amd,
                            onPressed: (){
                              amds();
                            },
                            child: Center(child: Text('AMD',style: TextStyle(color: Colors.black,fontSize: 17.0),)),
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white38)
                          ),
                          width: MediaQuery.of(context).size.width/1.3,
                          height: 50.0,
                          child: RaisedButton(
                            color:cata,
                            onPressed: (){
                              cat();
                            },
                            child: Center(child: Text('Cataracts',style: TextStyle(color: Colors.black,fontSize: 17.0),)),
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white38)
                          ),
                          width: MediaQuery.of(context).size.width/1.3,
                          height: 50.0,
                          child: RaisedButton(
                            color:drye,
                            onPressed: (){
                              dry();
                            },
                            child: Center(child: Text('Dry eye',style: TextStyle(color: Colors.black,fontSize: 17.0),)),
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white38)
                          ),
                          width: MediaQuery.of(context).size.width/1.3,
                          height: 50.0,
                          child: RaisedButton(
                            color:rede,
                            onPressed: (){
                              red();
                            },
                            child: Center(child: Text('Red eye',style: TextStyle(color: Colors.black,fontSize: 17.0),)),
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white38)
                          ),
                          width: MediaQuery.of(context).size.width/1.3,
                          height: 50.0,
                          child: RaisedButton(
                            color: pink,
                            onPressed: (){
                              pinke();
                            },
                            child: Center(child: Text('Pink eye',style: TextStyle(color: Colors.black,fontSize: 17.0),)),
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white38)
                          ),
                          width: MediaQuery.of(context).size.width/1.3,
                          height: 50.0,
                          child: RaisedButton(
                            color:glau,
                            onPressed: (){
                              glauc();
                            },
                            child: Center(child: Text('Glaucoma',style: TextStyle(color: Colors.black,fontSize: 17.0),)),
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white38)
                          ),
                          width: MediaQuery.of(context).size.width/1.3,
                          height: 50.0,
                          child: RaisedButton(
                            color: lazy,
                            onPressed: (){
                              lazye();
                            },
                            child: Center(child: Text('Lazy eye',style: TextStyle(color: Colors.black,fontSize: 17.0),)),
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white38)
                          ),
                          width: MediaQuery.of(context).size.width/1.3,
                          height: 50.0,
                          child: RaisedButton(
                            color:stra,
                            onPressed: (){
                              strab();
                            },
                            child: Center(child: Text('Strabismus',style: TextStyle(color: Colors.black,fontSize: 17.0),)),
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white38)
                          ),
                          width: MediaQuery.of(context).size.width/1.3,
                          height: 50.0,
                          child: RaisedButton(
                            color: othe,
                            onPressed: (){
                              other();
                            },
                            child: Center(child: Text('Other',style: TextStyle(color: Colors.black,fontSize: 17.0),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                    onTap: (){
                      Route route=MaterialPageRoute(builder: (context) => MyApp());
                      Navigator.push(context, route);
                    },
                    child: Text('Skip',style: TextStyle(fontSize: 18.0,color: Colors.redAccent),))),
          ),
          SizedBox(height: 25.0,),
          Expanded(
            flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width/2,
              child: RaisedButton(
                onPressed: (){
                  Route route=MaterialPageRoute(builder: (context) => MyApp());
                  Navigator.push(context, route);
                },
                child: Center(child: Text('Done',style: TextStyle(color: Colors.white,fontSize: 20.0),)),
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }

  Future<void> other() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('eye', "other");
    Route route=MaterialPageRoute(builder: (context) => MyApp());
    Navigator.push(context, route);
  }
  Future<void> strab() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('eye', "strab");
    Route route=MaterialPageRoute(builder: (context) => MyApp());
    Navigator.push(context, route);
  }
  Future<void> eye() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('eye', "eye");
    Route route=MaterialPageRoute(builder: (context) => MyApp());
    Navigator.push(context, route);
  }
  Future<void> dry() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('eye', "dry");
    Route route=MaterialPageRoute(builder: (context) => MyApp());
    Navigator.push(context, route);
  }
  Future<void> shorts() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('eye', "shorts");
    Route route=MaterialPageRoute(builder: (context) => MyApp());
    Navigator.push(context, route);
  }
  Future<void> lazye() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('eye', "lazye");
    Route route=MaterialPageRoute(builder: (context) => MyApp());
    Navigator.push(context, route);
  }
  Future<void> amds() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('eye', "amds");
    Route route=MaterialPageRoute(builder: (context) => MyApp());
    Navigator.push(context, route);
  }
  Future<void> glauc() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('eye', "glauc");
    Route route=MaterialPageRoute(builder: (context) => MyApp());
    Navigator.push(context, route);
  }
  Future<void> longs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('eye', "longs");
    Route route=MaterialPageRoute(builder: (context) => MyApp());
    Navigator.push(context, route);
  }
  Future<void> pinke() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('eye', "pinke");
    Route route=MaterialPageRoute(builder: (context) => MyApp());
    Navigator.push(context, route);
  }
  Future<void> problem() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('eye', "problem");
    Route route=MaterialPageRoute(builder: (context) => MyApp());
    Navigator.push(context, route);
  }
  Future<void> cat() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('eye', "cat");
    Route route=MaterialPageRoute(builder: (context) => MyApp());
    Navigator.push(context, route);
  }
  Future<void> red() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('eye', "red");
    Route route=MaterialPageRoute(builder: (context) => MyApp());
    Navigator.push(context, route);
  }
  getdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String eye=prefs.getString('eye');
    if(eye=='red'){
      setState(() {
        rede=Colors.orange;
      });
    }
    else if(eye=='cat'){
      setState(() {
        cata=Colors.orange;
      });
    }
    else if(eye=='problem') {
      setState(() {
         no= Colors.orange;
      });
    }
    else if(eye=='pinke'){
      setState(() {
        pink=Colors.orange;
      });
    }
    else if(eye=='longs'){
      setState(() {
        long=Colors.orange;
      });
    }
    else if(eye=='glauc'){
      setState(() {
        glau=Colors.orange;
      });
    }
    else if(eye=='amds'){
      setState(() {
        amd=Colors.orange;
      });
    }
    else if(eye=='lazye'){
      setState(() {
        lazy=Colors.orange;
      });
    }
    else if(eye=='shorts'){
      setState(() {
        short=Colors.orange;
      });
    }
    else if(eye=='dry'){
      setState(() {
        drye=Colors.orange;
      });
    }
    else if(eye=='eye'){
      setState(() {
        rede=Colors.orange;
      });
    }
    else if(eye=='strab'){
      setState(() {
        stra=Colors.orange;
      });
    }
    else if(eye=='other'){
      setState(() {
        othe=Colors.orange;
      });
    }
    else{
      setState(() {
        othe=Colors.white;
        stra=Colors.white;
        rede=Colors.white;
        drye=Colors.white;
        short=Colors.white;
        lazy=Colors.white;
        amd=Colors.white;
        glau=Colors.white;
        long=Colors.white;
        pink=Colors.white;
        no= Colors.white;
        cata=Colors.white;
        rede=Colors.white;
      });
    }
  }
}
