import 'package:eye_care/age_group.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'main.dart';
class profile_click extends StatefulWidget {
  @override
  _profile_clickState createState() => _profile_clickState();
}

class _profile_clickState extends State<profile_click> {
  Color c_male,c_female,c_other;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 70.0),
                    child: Text('Gender',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text('Specify your gender',style: TextStyle(fontSize: 17.0),),
                  ),
                  SizedBox(height: 35.0,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white54)
                    ),
                    width: MediaQuery.of(context).size.width/1.3,
                    height: 50.0,
                    child: RaisedButton(
                      color: c_male,
                      child: Center(child: Text('Male',style: TextStyle(fontSize: 17),)),
                      onPressed: (){
                        male();
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
                      color: c_female,
                      onPressed: (){
                        female();
                      },
                      child: Center(child: Text('Female',style: TextStyle(fontSize: 17),)),

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
                      color:c_other,
                      onPressed: (){
                        other();
                      },
                      child: Center(child: Text('Other',style: TextStyle(color: Colors.black,fontSize: 17.0),)),
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
                    Route route=MaterialPageRoute(builder: (context) => age_group());
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
  Future<void> male() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('gender', "Male");
      Route route=MaterialPageRoute(builder: (context) => age_group());
      Navigator.push(context, route);
  }
  Future<void> female() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('gender', "Female");
    Route route=MaterialPageRoute(builder: (context) => age_group());
    Navigator.push(context, route);
  }
  Future<void> other() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('gender', "other");
    Route route=MaterialPageRoute(builder: (context) => age_group());
    Navigator.push(context, route);
  }
    getdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String gender=prefs.getString('gender');
    if(gender=='Male'){
      setState(() {
        c_male=Colors.orange;
      });
    }
    else if(gender=='Female'){
      setState(() {
        c_female=Colors.orange;
      });
    }
    else if(gender=='other'){
      setState(() {
        c_other=Colors.orange;
      });
    }
    else{
      setState(() {
        c_male=Colors.white;
        c_female=Colors.white;
        c_other=Colors.white;
      });
    }
  }
}
