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
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.lightGreen),
    );
  }
}

//
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0; //การสร้าง state

// แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เลือกเมนู"),
        ),
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("เมนูที่ $index"),
          );
        }));
  }
}
