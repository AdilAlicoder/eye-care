import 'package:flutter/material.dart';
class traing_show extends StatefulWidget {
  final String training;
  final Color t_color;
  traing_show(this.training,this.t_color);

  @override
  _traing_showState createState() => _traing_showState(training,t_color);
}

class _traing_showState extends State<traing_show> {
  final String training;
  final Color t_color;
  String midelf,endf,midels,ends,midelt,endt;
  _traing_showState(this.training,this.t_color);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(training=='Basic Training'){
      midelf='Info';
      endf='Intended to relax your eyes before sleep\nincludes relaxation exercises to reduce\neye fatigue and tension acquried during\n the day and prepare your eyes for sleep';
      midels='How it works';
      ends='The basic training includes warm-up\nbasic and relaxation trainings to cover\nall aspects of your vision';
      midelt='Exceptions';
      endt='it doesnt help to reduce eye refractive\nproblems such as nearsightedness\n farsightedness,astigmatism and so on';
    }
    else if(training=='Bedtime Training'){
      midelf='Info';
      endf='Intended to relax your eyes before sleep\nincludes relaxation exeercises to reduce\neye fatigue and tension acquried during\n the day and prepare your eyes for sleep';
      midels='How it works';
      ends='Modern working and living conditions\n put lots of strain on the ayes, and this\ntraining helps to give your eyes a break';
      midelt='Exceptions';
      endt='it wont help to reduce eye refractive\nproblems such as nearsightedness,\nfarsightedness,astigmatism and so on';
    }
    else if(training=='Lazy Eye Training'){
      midelf='Info';
      endf='Intended to reduce to symptoms\nof reduce to symptoms of lazy eye\n among kids up to the age of 12 and to\ntrain the eyes among adults';
      midels='How it works';
      ends='Basically,the lazy eye is a condition in\nwhich on the eyes in unable to focus properly because it has been underused';
      midelt='Exceptions';
      endt='it wont help reduce lazy eye symptoms\nin case you are over 12 years of age, but it will train the eye for batter\nperformance';

    }
    else if(training=='Dry Eye Training'){
      midelf='Info';
      endf='intended to reduce the dry eye\nsyndorne and CVS includes frequent\nquick trainings to keep your eyes moist\nand reduce eye dryness';
      midels='How it works';
      ends='Basically, eyes get dry because of lack\n of movement when you stare at your\ncomputer screen, read or concentrate\nyour  vision of extended period of time';
      midelt='Exceptions';
      endt='it wont help in case you have dry\n eye caused by laser corrective\nsurgery,pregancy,diabetes or other\nhealth-related issues';

    }
  }
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async {
      Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        backgroundColor:t_color,
        appBar: AppBar(
          backgroundColor:t_color,
          leading: new IconButton(
            icon: new Icon(Icons.keyboard_backspace,size: 35,color: Colors.white,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text('$training',style: TextStyle(fontSize: 20.0,color: Colors.white),),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ui(midelf,endf),
              ui(midels,ends),
              ui(midelt,endt),
            ],
          ),
        ),
      ),
    );
  }

  ui(String second, String third) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(left:7.0),
        child: Card(
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width/1.2,
            height: MediaQuery.of(context).size.height/1.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 56,),
                Icon(
                  Icons.add,
                  size: 80,
                  color: Colors.blue,
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left:6.0),
                  child: Text(second,style: TextStyle(fontSize: 27),),
                ),
                SizedBox(height: 43,),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Text(third,style: TextStyle(fontSize: 16,color: Colors.grey),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
