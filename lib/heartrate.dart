import 'package:flutter/material.dart';

class Heartrate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Text(
              "HEARTRATE",
              style: new TextStyle(fontSize: 30.0),
            ),
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Row(
              children: [
                new Padding(
                  padding: new EdgeInsets.only(left: 100.0),
                ),
                new Text(
                  "88",
                  style: new TextStyle(fontSize: 100.0),
                ),
                new Text(
                  " bpm",
                  style: new TextStyle(fontSize: 30.0),
                ),
              ],
            ),
            // new Icon(Icons.people, size: 90.0)
          ],
        ),
      ),
    );
  }
}
