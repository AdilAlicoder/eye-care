import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'eye_issue.dart';
import 'main.dart';
class age_group extends StatefulWidget {
  @override
  _age_groupState createState() => _age_groupState();
}

class _age_groupState extends State<age_group> {
  Color c_twentytwofourthyfive,c_fourthyfive,c_tentwenty,c_zeroten;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 70.0),
                    child: Text('Age group',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text('Choose your age to help us identify \n your risks of certain eye conditions',style: TextStyle(fontSize: 17.0),),
                  ),
                  SizedBox(height: 35.0,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white54)
                    ),
                    width: MediaQuery.of(context).size.width/1.3,
                    height: 50.0,
                    child: RaisedButton(
                      color:c_fourthyfive,
                      child: Center(child: Text('45+',style: TextStyle(fontSize: 17),)),
                      onPressed: (){
                        f_five();
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
                      color:c_twentytwofourthyfive,
                      onPressed: (){
                        t_toffive();
                      },
                      child: Center(child: Text('22-45',style: TextStyle(fontSize: 17),)),

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
                      color:c_tentwenty,
                      onPressed: (){
                        t_tott();
                      },
                      child: Center(child: Text('10-22',style: TextStyle(color: Colors.black,fontSize: 17.0),)),
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
                      color:c_zeroten,
                      onPressed: (){
                        z_tot();
                      },
                      child: Center(child: Text('0-10',style: TextStyle(color: Colors.black,fontSize: 17.0),)),
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
            SizedBox(height: 15.0,),
            Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.width/1.7,
                child: RaisedButton(
                  onPressed: (){
                    Route route=MaterialPageRoute(builder: (context) => eye_issue());
                    Navigator.push(context, route);
                  },
                  child: Center(child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 22.0),)),
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }

  Future<void> z_tot() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('age', "zeroten");
    Route route=MaterialPageRoute(builder: (context) => eye_issue());
    Navigator.push(context, route);
  }
  Future<void> t_tott() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('age', "tentwenty");
    Route route=MaterialPageRoute(builder: (context) => eye_issue());
    Navigator.push(context, route);
  }
  Future<void> f_five() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('age', "fourthyfive");
    Route route=MaterialPageRoute(builder: (context) => eye_issue());
    Navigator.push(context, route);
  }
  Future<void> t_toffive() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('age', "twentytwofourthyfive");
    Route route=MaterialPageRoute(builder: (context) => eye_issue());
    Navigator.push(context, route);
  }
  getdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String age=prefs.getString('age');
    if(age=='twentytwofourthyfive'){
      setState(() {
        c_twentytwofourthyfive=Colors.orange;
      });
    }
    else if(age=='fourthyfive'){
      setState(() {
        c_fourthyfive=Colors.orange;
      });
    }
    else if(age=='tentwenty') {
      setState(() {
        c_tentwenty = Colors.orange;
      });
    }
    else if(age=='zeroten'){
      setState(() {
        c_zeroten=Colors.orange;
      });
    }
    else{
      setState(() {
        c_zeroten=Colors.white;
        c_tentwenty=Colors.white;
        c_fourthyfive=Colors.white;
        c_twentytwofourthyfive=Colors.white;
      });
    }
  }
}
