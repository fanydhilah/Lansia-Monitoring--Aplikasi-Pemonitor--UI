import 'package:dicoding_flutter_pemula_fan/jadwal.dart';
import 'package:flutter/material.dart';
import 'activity.dart';

class CollectData extends StatefulWidget {
  CollectData({Key key}) : super(key: key);

  @override
  _CollectDataState createState() => _CollectDataState();
}

class _CollectDataState extends State<CollectData> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ketController = TextEditingController();

  bool isValid() {
    if (nameController.text.isEmpty) {
      return false;
    }

    if (ketController.text.isEmpty) {
      return false;
    }

    return true;
  }

  sendData() {
    if (isValid()) {
      // buat object customer dari input user
      Activity activity = Activity(nameController.text, ketController.text);
      // kirim object customer ke halaman ReceiptData
      Navigator.pop(
          context,
          MaterialPageRoute(
              builder: (context) => Schedule(activity: activity)));
    } else {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('Please fill all field.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('OK'),
                ),
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Collect Data',
          style: new TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        actions: <Widget>[
          TextButton(
            onPressed: () {
              sendData();
            },
            child: Text(
              'SEND',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              "Tambahkan Kegiatan",
              style: new TextStyle(fontSize: 30.0),
            ),
            Text('Nama Kegiatan'),
            TextField(
              controller: nameController,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Text('Keterangan'),
            TextField(
              controller: ketController,
            )
          ],
        ),
      )),
    );
  }
}
