// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/gestures.dart';
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
  //usernamecontroller
  TextEditingController usernameController = TextEditingController();
  //passwordcontroller
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ChikeHomePage"),
        ),
        body: Column(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0), width: 2.0),
                ),
                hintText: "Enter your name",
                labelText: "Name",
              ),
            ),
          ),
          //password field
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0), width: 2.0),
                ),
                hintText: "Enter your password",
                labelText: "Password",
              ),
            ),
          ),
          //button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  var username = usernameController.text;
                  var password = passwordController.text;
                  print("username: " + username + " password: " + password);
                },
                child: Text("Login")),
          )
        ]));
  }
}
