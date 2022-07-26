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
      body: Center(
        child: ListView(
          children: getdata(10),
        ),
      ),
    );
  }

// เตรียมข้อมูล
  List<Widget> getdata(int count) {
    // กลุ่มข้อมูล Text Widget
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      data.add(Text(
        "เมนูที่ ${i + 1}",
        style: TextStyle(fontSize: 25),
      ));
    }
    return data;
  }
}
