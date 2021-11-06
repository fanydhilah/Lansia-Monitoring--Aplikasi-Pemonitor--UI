import 'package:dicoding_flutter_pemula_fan/activity.dart';
import 'package:flutter/material.dart';

import './lansia.dart' as lansia;
import './heartrate.dart' as heartrate;
import './track.dart' as track;
import './jadwal.dart' as jadwal;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lansia Monitoring',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Lansia Monitoring'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.activity}) : super(key: key);

  final String title;
  final Activity activity;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  Activity activity;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Lansia Monitoring"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.centerRight,
                  colors: <Color>[Color(0xff226f54), Color(0xff75b484)])),
        ),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Image(
                image: AssetImage("img/lansia.png"),
              ),
              text: "Lansia",
            ),
            new Tab(
              icon: new Image(
                image: AssetImage("img/heart.png"),
              ),
              text: "HeartRate",
            ),
            new Tab(
              icon: new Image(
                image: AssetImage("img/gps.png"),
              ),
              text: "Tracking",
            ),
            new Tab(
              icon: new Image(
                image: AssetImage("img/run.png"),
              ),
              text: "Schedule",
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new lansia.Lansia(),
          new heartrate.Heartrate(),
          new track.Track(),
          new jadwal.Schedule(
            activity: activity,
          )
        ],
      ),
    );
  }
}
