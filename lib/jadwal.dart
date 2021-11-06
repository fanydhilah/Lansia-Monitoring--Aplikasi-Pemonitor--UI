import 'package:flutter/material.dart';
import 'addTask.dart';
import 'activity.dart';

class Schedule extends StatefulWidget {
  final Activity activity;

  // constructor
  Schedule({Key key, @required this.activity}) : super(key: key);

  @override
  _ScheduleState createState() => _ScheduleState(activity: activity);
}

class _ScheduleState extends State<Schedule> {
  Activity activity;

  _ScheduleState({@required this.activity}) : super();

  bool isValid() {
    if (activity.name == null) {
      return false;
    }

    if (activity.ket == null) {
      return false;
    }

    return true;
  }

  getData() {
    if (isValid()) {
      jadwal(activity.name, activity.ket);
    } else {
      jadwal(null, null);
    }
  }

  Widget jadwal(String name, String ket) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.0)]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(25.0, 10.0, 5.0, 10.0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(25.0, 35.0, 5.0, 10.0),
                child: Text(
                  ket,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return new Scaffold(
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CollectData();
          }));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      body: new ListView(
        shrinkWrap: false,
        children: <Widget>[
          jadwal("Minum Obat", "setelah makan"),
          jadwal("Berjemur", "Pagi Hari"),
          // getData(),
          // jadwal(activity.name, activity.ket),
        ],
      ),
    );
  }
}
