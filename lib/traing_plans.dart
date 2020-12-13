import 'package:eye_care/traing_show.dart';
import 'package:flutter/material.dart';
class traing_plans extends StatefulWidget {
  @override
  _traing_plansState createState() => _traing_plansState();
}

class _traing_plansState extends State<traing_plans> {
  Color f_color=  Colors.orangeAccent;
  Color s_color=  Colors.deepOrange;
  Color t_color=  Colors.indigoAccent;
  Color fo_color=Colors.teal;
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
            icon: new Icon(Icons.keyboard_backspace,size: 35,color: Colors.black,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text('Training Plans',style: TextStyle(fontSize: 20.0,color: Colors.black),),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:8.0,left: 17),
                child: Text('My Plans',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              traingbox('Basic Training','Intended to insure the basic',' everday care for your eyes', f_color),
              Padding(
                padding: const EdgeInsets.only(top:8.0,left: 17),
                child: Text('Plans in store',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              traingbox('Bedtime Training','Intended to relax your eyes',' before sleep',s_color),
              traingbox('Lazy Eye Training','Intended for people with',' symptons fo the lazy eye',t_color),
              traingbox('Dry Eye Training','Intended to reduce the dry',' eye syndome and CVS',fo_color),
            ],
          ),
        ),
      ),
    );
  }

  traingbox(String training,String first,String second, Color t_color) {
    return Padding(
      padding: const EdgeInsets.only(left: 11.0,top: 15.0),
      child: InkWell(
        onTap: (){
          Route route=MaterialPageRoute(builder: (context) => traing_show(training,t_color));
          Navigator.push(context, route);
        },
        child: Container(
          decoration: BoxDecoration(
              color: t_color,
              borderRadius: BorderRadius.circular(10)),
          width: MediaQuery.of(context).size.width/1.1,
          height: MediaQuery.of(context).size.height/4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Text('$training',style: TextStyle(fontSize: 20.0,color: Colors.white),),
              ),
              //SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(top: 18,left:11),
                child: Text('$first',style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text('$second',style: TextStyle(color: Colors.white,fontSize: 17)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
