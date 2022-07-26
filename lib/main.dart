import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "My App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter ค่ะ"),
      ),
      body: Text("สัวสดีค่ะทุกคน"),
    ),
  );
  runApp(app);
}
