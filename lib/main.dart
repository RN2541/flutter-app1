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

  @override
  Widget build(BuildContext context) {
    // กลุ่มข้อมูล Text Widget
    List<Widget> data = [];
    for (var i = 0; i < 10; i++) {
      data.add(Text("รายการที่ $i"));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("โปรแกรมนับตัวเลข"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: data,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNumber,
        child: Icon(Icons.add),
      ),
    );
  }

//แยกมาอีกฟังก์ชันเพื่อให้มองง่ายกว่า
  void addNumber() {
    setState(() {
      number++;
    });
  }
}
