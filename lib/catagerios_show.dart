import 'package:flutter/material.dart';
class catagerios_show extends StatefulWidget {
  @override
  _catagerios_showState createState() => _catagerios_showState();
}

class _catagerios_showState extends State<catagerios_show> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Text('Wave Move',style: TextStyle(fontSize: 20.0,color: Colors.black),),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Image(
              width: 220,
              height: 220,
              image: AssetImage('images/wavw.png'),
            ),
            SizedBox(height: 50,),
            Text('Stimulation, Dry eye\nAccommodation spasm\nRelaxation,Eye Muscles,All day\n Evening,Lazy eye',style: TextStyle(fontSize: 22,color: Colors.grey),),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Colors.grey,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/8,
                  child: Center(
                    child: Container(
                      width: 280,
                      height: 90,
                      child: Row(
                        children: [
                          Align(
                            child: Container(
                              width: 130,
                              height: 45,
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: (){},
                                child: Center(child: Text('How-to',style: TextStyle(fontSize: 18),)),
                              ),
                            ),
                          ),
                          SizedBox(width: 9,),
                          Container(
                            width: 130,
                            height: 45,
                            child: RaisedButton(
                              color: Colors.orangeAccent,
                              onPressed: (){},
                              child: Center(child: Text('start',style: TextStyle(fontSize: 18),)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],

        ),
      ),
    );
  }
}
