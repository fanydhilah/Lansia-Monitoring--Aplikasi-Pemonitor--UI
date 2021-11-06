import 'package:flutter/material.dart';
import 'addName.dart';

class Lansia extends StatefulWidget {
  @override
  _LansiaState createState() => _LansiaState();
}

class _LansiaState extends State<Lansia> {
  Widget buildInfo(String name, String asamurat, String kolesterol,
      String guladarah, String url) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
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
                child: Text('PROFIL'),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(25.0, 35.0, 5.0, 10.0),
                  child: Image(
                    height: 80,
                    width: 80,
                    image: NetworkImage(url),
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(25.0, 125.0, 5.0, 10.0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 60.0),
                child: Text(
                  'Asam Urat: ' + asamurat,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 60.0, top: 10.0),
                child: Text(
                  'Gula Darah: ' + guladarah,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 60.0, top: 10.0),
                child: Text(
                  'Kolesterol: ' + kolesterol,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // appBar: buildappbar(),
        body: ListView(
          shrinkWrap: false,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25.0),
                    child: Text(
                      'Monitoring',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                  )
                ],
              ),
            ),
            buildInfo("Nenek", "normal", "normal", "normal",
                "https://images.generated.photos/CdZ0GFutze_FRpsgSXu4qHOsatA13v7RDiwiwXSovtA/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yy/XzA0OTM2MjQuanBn.jpg"),
            buildInfo("Kakek", "normal", "normal", "normal",
                "https://images.generated.photos/vndIcuD0cnLPpYZjtRHaKgdYRS9fOAmXzpm3I2uUb18/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yy/XzA3MTk1NTIuanBn.jpg"),
            SizedBox(
              height: 40.0,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AddName();
            }));
          },
          tooltip: 'Increment',
          backgroundColor: Colors.green,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
