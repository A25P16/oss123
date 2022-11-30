import 'package:flutter/material.dart';

class test_atter_class extends StatefulWidget {
  const test_atter_class({super.key});

  @override
  State<test_atter_class> createState() => test_classapp();
}

class test_classapp extends State<test_atter_class> {
  int navindex = 0;
  @override
  Widget build(BuildContext context) {
    return newMethod();
  }

  Scaffold newMethod() {
    return Scaffold(
      // backgroundColor: Color(0xFFFFB200),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFB200),
        title: Text(
          "เเบบทดสอบหลังเรียน",
          style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 8, 14)),
        ),
      ),
      body: Center(
        child: Container(
          // btn คะแนน
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // image logo

              SizedBox(
                height: 25,
              ),
              Center(
                  child: Text(
                "ข้อที่ 1",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )), // โจทร์ข้อที่ 1
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF277BC0),
                    shape: const StadiumBorder(),

                    minimumSize: Size(100, 25), // background

                    // foreground
                  ),
                  onPressed: () {},
                  child: const Text(
                    "คำตอบที่ 1",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 15,
              ), //btn คำตอบ 1

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF277BC0),
                    shape: const StadiumBorder(),

                    minimumSize: Size(100, 25), // background

                    // foreground
                  ),
                  onPressed: () {},
                  child: const Text(
                    "คำตอบที่ 2",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 15,
              ), //btn คำตอบ 2

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF277BC0),
                    shape: const StadiumBorder(),

                    minimumSize: Size(100, 25), // background

                    // foreground
                  ),
                  onPressed: () {},
                  child: const Text(
                    "คำตอบที่ 2",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  )), // btn คำตอบ 3
            ],
          ),
        ),
      ),
    );
  }
}
