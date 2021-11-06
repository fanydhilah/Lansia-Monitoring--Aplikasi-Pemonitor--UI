import 'package:dicoding_flutter_pemula_fan/lansia.dart';
import 'package:flutter/material.dart';

class AddName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("Tambahkan Nama"),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildTextField("Nama"),
                buildTextField("Asam Urat"),
                buildTextField("Gula Darah"),
                buildTextField("Kolesterol"),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => Lansia()));
                  },
                  child: Text("Submit"),
                  style: ElevatedButton.styleFrom(primary: Colors.green[700]),
                ),
              ]),
        ),
      ),
    );
  }

  TextField buildTextField(name) {
    return TextField(
      decoration: InputDecoration(
        // prefixIcon: Icon(icon),
        labelText: name,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
