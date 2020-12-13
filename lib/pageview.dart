import 'package:flutter/material.dart';
class pageview extends StatefulWidget {
  @override
  _pageviewState createState() => _pageviewState();
}

class _pageviewState extends State<pageview> {
  final Contr=PageController(
    initialPage: 1,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Column(
          children: [
            Container(
             height: MediaQuery.of(context).size.height/2,
              child: PageView(
                controller: Contr,
                children: [
                  Container(
                    color: Colors.orange,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
