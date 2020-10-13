import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purpleAccent[100],
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hii"),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.red,
            width: 200,
            height: 200,
            alignment: Alignment.center,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.orange,
            width: 200,
            height: 200,
            alignment: Alignment.center,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.green,
            width: 200,
            height: 200,
            alignment: Alignment.center,
          ),
        ],
      )),
    );
  }
}
