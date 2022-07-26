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
          child: Image(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2022/07/07/07/25/dog-7306691__340.jpg"),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.lightGreen),
    );
  }
}
