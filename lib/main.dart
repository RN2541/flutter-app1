import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// สร้าง widged
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("ยินดีต้อนรับ"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("สวัสดีค่ะทุกคน"),
              Text("็Hello Dart"),
              Text("Hello Flutter")
            ],
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.lightGreen),
    );
  }
}
