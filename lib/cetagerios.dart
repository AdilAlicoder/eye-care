import 'package:flutter/material.dart';
class cetagerios extends StatefulWidget {
  @override
  _cetageriosState createState() => _cetageriosState();
}

class _cetageriosState extends State<cetagerios> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.indigo,
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
            child: Text('Exercises',style: TextStyle(fontSize: 20.0,color: Colors.blue[400]),),
          ),
        ),
        body: SingleChildScrollView(

          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('EVENING',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),),
                ),
                SizedBox(height: 7,),
                Padding(
                  padding:  EdgeInsets.only(left: 10.0,top: 14.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        wave('images/wavw.png','WAVE MOVE'),
                        wave('images/plaming.png','PLAMING'),
                        wave('images/closedeye.png','CLOSED EYE MOVE'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('DRY EYE',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),),
                ),
                SizedBox(height: 7,),
                Padding(
                  padding:  EdgeInsets.only(left: 8.0,top: 12.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        wave('images/wavw.png','WAVE MOVE'),
                        wave('images/plaming.png','PLAMING'),
                        wave('images/bliking.png','BLINKING'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('ACCOMMODATION SPASM',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),),
                ),
                SizedBox(height: 7,),
                Padding(
                  padding:  EdgeInsets.only(left: 8.0,top: 12.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        wave('images/spilt.png','SPLIT IMAGES'),
                        wave('images/CONVER-GENCE.png','CONVER-GENCE'),
                        wave('images/FOCUS SHIFT.png','FOCUS SHIFT'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  wave(String image,String name) {
    return Container(
      width: MediaQuery.of(context).size.width/2.4,
      height: MediaQuery.of(context).size.height/4.5,
      child: Card(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 80,
                height: 80,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(name,style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
