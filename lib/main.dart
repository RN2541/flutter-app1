import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "My App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("ยินดีต้อนรับ"),
      ),
      body: Text("สัวสดีค่ะทุกคน"),
    ),
    theme: ThemeData(primarySwatch: Colors.lightGreen),
  );
  runApp(app);
}
