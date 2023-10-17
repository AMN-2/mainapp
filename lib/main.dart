// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, must_be_immutable, avoid_unnecessary_containers
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List names = [
    {"name": "ameen", "age": "12"},
    {"name": "ahmed", "age": "15"},
    {"name": "ali", "age": "17"},
    {"name": "abbass", "age": "20"},
    {"name": "kadhim", "age": "30"},
    {"name": "ameen", "age": "12"},
    {"name": "ahmed", "age": "15"},
    {"name": "ali", "age": "17"},
    {"name": "abbass", "age": "20"},
    {"name": "kadhim", "age": "30"},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(
            child: Text("First App "),
          ),
        ),
        body: ListView.separated(
          separatorBuilder: (context, i) {
            return Container(
              color: Color.fromARGB(221, 124, 88, 88),
            );
          },
          itemCount: names.length,
          itemBuilder: (context, i) {
            return Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10.7),
              width: 100,
              height: 100,
              color: i.isEven
                  ? Color.fromARGB(255, 255, 255, 255)
                  : Colors.blueGrey,
              child: Text(
                "$i" + " - " + names[i]["name"] + " =>",
                style: TextStyle(
                    color: i.isEven ? Colors.black : Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            );
          },
        ),
      ),
    );
  }
}
