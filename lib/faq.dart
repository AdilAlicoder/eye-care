import 'package:flutter/material.dart';
class faq extends StatefulWidget {
  @override
  _faqState createState() => _faqState();
}

class _faqState extends State<faq> {
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
            child: Text('FAQ',style: TextStyle(fontSize: 20.0,color: Colors.black),),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('General FAQ About Vision and About This Website',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Below are our most frequently asked questions about vision, eye health, and this website. We also have FAQ pages on cataracts, contact lenses, diabetic retinopathy, eyeglasses, glaucoma, laser eye surgery, macular degeneration and sunglasses.',style: TextStyle(fontSize: 17),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('I work on a computer all day. Can this hurt my eyes?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Computer monitors emit levels of radiation that are considerably lower than the maximum allowed for safety, according to a study by the National Institute for Occupational Safety and Health. NIOSH compared the maximum radiation levels in a group of monitors with the safety standards.',style: TextStyle(fontSize: 17),),
            )
          ],
        ),
      ),
    );
  }
}
