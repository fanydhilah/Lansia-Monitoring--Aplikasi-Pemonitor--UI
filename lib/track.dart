import 'package:flutter/material.dart';

class Track extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: new SingleChildScrollView(
          child: new Center(
            child: new Column(
              children: <Widget>[
                // new Padding(
                //   padding: new EdgeInsets.all(20.0),
                // ),
                // new Text(
                //   "Track",
                //   style: new TextStyle(fontSize: 30.0),
                // ),
                // new Padding(
                //   padding: new EdgeInsets.all(20.0),
                // ),
                new Image(image: AssetImage("img/map.png"))
              ],
            ),
          ),
        ));
  }
}
