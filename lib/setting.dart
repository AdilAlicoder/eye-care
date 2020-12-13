import 'package:flutter/material.dart';
import 'package:seekbar/seekbar.dart';
class setting extends StatefulWidget {
  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  bool isSwitchedf = false;
  bool isSwitcheds = false;
  bool isSwitchedt = false;
  int morning = 10;
  int afternoon = 3;
  int evening = 9;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          leading: new IconButton(
            icon: new Icon(Icons.keyboard_backspace,size: 35,color: Colors.white,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text('Settings',style: TextStyle(fontSize: 20.0,color: Colors.white),),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top:12.0,left: 12),
              child: ListTile(
                title: Text('Active Period'),
                subtitle: Text('2 months'),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Notifications',style: TextStyle(color: Colors.cyan,fontSize: 17),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Remind Morning Training'),
                ),
                Switch(
                  value: isSwitchedf,
                  onChanged: (value){
                    setState(() {
                      isSwitchedf=value;
                      print(isSwitchedf);
                    });
                  },
                  activeTrackColor: Colors.lightGreenAccent,
                  activeColor: Colors.green,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Remind Afternoon Training'),
                ),
                Switch(
                  value: isSwitcheds,
                  onChanged: (value){
                    setState(() {
                      isSwitcheds=value;
                      print(isSwitcheds);
                    });
                  },
                  activeTrackColor: Colors.lightGreenAccent,
                  activeColor: Colors.green,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Remind Evening Training'),
                ),
                Switch(
                  value: isSwitchedt,
                  onChanged: (value){
                    setState(() {
                      isSwitchedt=value;
                      print(isSwitchedt);
                    });
                  },
                  activeTrackColor: Colors.lightGreenAccent,
                  activeColor: Colors.green,
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 18,),
            Padding(
              padding:  EdgeInsets.only(left:20.0),
              child: Text('Training hours',style: TextStyle(fontSize: 17,color: Colors.blue),),
            ),
            SizedBox(height: 18,),
            Padding(
              padding:  EdgeInsets.only(left:20.0),
              child: Text('Morning training at $morning am'),
            ),
            Slider(
                value: morning.toDouble(),
                min: 0,
                max: 10,
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                label: '${morning.round()}',
                onChanged: (double newValue) {
                  setState(() {
                    morning = newValue.round();
                  });
                },
                semanticFormatterCallback: (double newValue) {
                  return '${newValue.round()}';
                }
            ),
           Padding(
              padding:  EdgeInsets.only(left:20.0),
              child: Text('Afternoon training at $afternoon pm'),
            ),
            Slider(
                value: afternoon.toDouble(),
                min: 0,
                max: 10,
                //divisions: 100,
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                label: '${afternoon.round()}',
                onChanged: (double newValue) {
                  setState(() {
                    afternoon = newValue.round();
                  });
                },
                semanticFormatterCallback: (double newValue) {
                  return '${newValue.round()}';
                }
            ),
            Padding(
              padding:  EdgeInsets.only(left:20.0),
              child: Text('Evening training at $evening pm'),
            ),
            Slider(
                value: evening.toDouble(),
                min: 0,
                max: 10,
                //divisions: 100,
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                label: '${evening.round()}',
                onChanged: (double newValue) {
                  setState(() {
                    evening = newValue.round();
                  });
                },
                semanticFormatterCallback: (double newValue) {
                  return '${newValue.round()}';
                }
            ),
          ],
        ),
      ),
    );
  }
}
