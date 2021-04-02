import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Latihan Text Field"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  icon: Icon(Icons.adb),
                  prefixIcon: Icon(Icons.person),
                  prefixText: "Name: ",
                  prefixStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w600),
                  suffix: Container(
                    width: 5,
                    height: 5,
                    color: Colors.red,
                  ),
                  labelText: "Nama Lengkap :",
                  hintText: "Nama lengkapnya lo",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              maxLength: 5,
              onChanged: (value) {
                setState(() {});
              },
            ),
            Text(controller.text)
          ],
        ),
      ),
    ));
  }
}
