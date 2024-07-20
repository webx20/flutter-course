// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  //runApp
  runApp(const ChikeEntryWidget());
}

//Entry Widget
class ChikeEntryWidget extends StatelessWidget {
  const ChikeEntryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //return MaterialApp
    return MaterialApp(
      title: "ChikesApplication",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: const ChikeHomePage(),
    );
  }
}

//ChikeHomePage
class ChikeHomePage extends StatefulWidget {
  const ChikeHomePage({super.key});

  @override
  State<ChikeHomePage> createState() => _ChikeHomePageState();
}

class _ChikeHomePageState extends State<ChikeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ChikeHomePage"),
        ),
        body: Text("Flutter is blessed"));
  }
}
