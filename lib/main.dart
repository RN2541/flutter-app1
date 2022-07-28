import 'package:flutter/material.dart';
import 'FoodMenu.dart';

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
  //กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา", "500", "assets/image/Picture1.jpg"),
    FoodMenu("กะเพราหมู", "80", "assets/image/Picture2.jpg"),
    FoodMenu("ส้มตำ", "60", "assets/image/Picture4.jpg"),
    FoodMenu("ผัดไทย", "40", "assets/image/Picture3.jpg")
  ];

// แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เลือกเมนู"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                leading: Image.asset(food.img),
                title: Text(
                  food.name,
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text("ราคา" + food.price + "บาท"),
                onTap: () {
                  print("คุณเลือกเมนูอาหารชื่อว่า = " + food.name);
                },
              );
            }));
  }
}
