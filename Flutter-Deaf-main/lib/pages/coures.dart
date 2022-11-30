import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animation_search_bar/animation_search_bar.dart';
import 'package:flutter/material.dart';

class CouresPage extends StatefulWidget {
  const CouresPage({super.key});

  @override
  State<CouresPage> createState() => _CouresPageState();
}

class _CouresPageState extends State<CouresPage> {
  final List<String> listcoures = [
    "ทักทาย",
    "ตัวเลข",
    "สี",
    "วัน-เดือน-ปี",
  ];
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 65),
        child: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xFFFFB200),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 247, 244, 244),
                      blurRadius: 5,
                      spreadRadius: 0,
                      offset: Offset(0, 5))
                ]),
            alignment: Alignment.center,
            child: AnimationSearchBar(
                backIconColor: Colors.black,
                centerTitle: 'Seach App',
                onChanged: (text) => debugPrint(text),
                searchTextEditingController: controller,
                horizontalPadding: 5),
          ),
        ),
      ),

      body:
      ListView.builder(
        itemCount: listcoures.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              tileColor: Color(0xFFFFB200),
              // leading: CircleAvatar(
              //   backgroundColor: Colors.blue
              title: Center(
                child: Text(
                  listcoures[index],
                  style: TextStyle(
                      fontSize: 35, color: Color.fromARGB(255, 0, 0, 0)),
                  //style: GoogleFonts.aBeeZee(textStyle:TextStyle(fontSize: 30,color: Color.fromARGB(255, 0, 0, 0)), )
                ),
              ),
            ),

            // title: Center(
            //   child: Text(
            //   listcoures[index],
            // ),
            //   ),
            // ),
          );
        })
    );

    // body listview
  
  }
}
