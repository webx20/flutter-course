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
  //declare property indexcount
  int indexCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: const Text("ChikesApplication"),
        backgroundColor: Colors.black,
        elevation: 5.0,
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i0.wp.com/www.lifeafterphotoshop.com/wp-content/uploads/2021/02/albert-dera-ILip77SbmOE-unsplash-after-v2.jpg?resize=683%2C1024&ssl=1",
                ),
              ),
              accountName: Text("webx20"),
              accountEmail: Text("webxtralive@gmail.com")),
          ListTile(
            title: Text("Home"),
          ),
          Divider(
            color: Colors.blueAccent,
            height: 0,
          ),
          ListTile(
            title: Text("About"),
            leading: Icon(Icons.info),
          ),
          Divider(
            color: Colors.blueAccent,
            height: 0,
          ),
          ListTile(
            title: Text("Contact"),
            leading: Icon(Icons.phone),
          ),
          Divider(
            color: Colors.blueAccent,
            height: 0,
          ),
          ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings),
          ),
          Divider(
            color: Colors.blueAccent,
            height: 0,
          ),
          ListTile(
            title: Text("Logout"),
            leading: Icon(Icons.key),
          ),
          Divider(
            color: Colors.blueAccent,
            height: 0,
          ),
          ListTile(
            title: Text("version 2.00"),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        elevation: 100,
        onPressed: () {
          print("Am moving forward");
        },
        child: Icon(Icons.share),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
          child: Column(
            children: [
              Text(
                "Chike Is Blessed",
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
              //image from network
              Image.network(
                "https://i0.wp.com/www.lifeafterphotoshop.com/wp-content/uploads/2021/02/albert-dera-ILip77SbmOE-unsplash-after-v2.jpg?resize=683%2C1024&ssl=1",
                width: 500.0,
                height: 500.0,
              ),
              //input
              TextField(
                  decoration: InputDecoration(
                labelText: "Enter your name",
                hintText: "Enter your number",
              )),
              Text("Chike you are doing well"
                  "Chike you are doing well"
                  "Chike you are doing well"
                  "Chike you are doing well"
                  "Chike you are doing well"),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                print("Having a good time");
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print("setting working");
              },
            ),
            IconButton(
              icon: Icon(Icons.contact_phone),
              onPressed: () {
                print("phone calling you");
              },
            ),
          ],
        )
      ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexCount,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: "Contact",
          ),
        ],
        onTap: (int index) {
          print("Index: $index");
          //update indexCount state
          setState(() {
            indexCount = index;
          });
        },
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                "Endrawee",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.info),
            ),
            Divider(
              color: Colors.black,
              height: 0,
            ),
            ListTile(
              title: Text("Contact"),
              leading: Icon(Icons.contact_phone),
            ),
            Divider(
              color: Colors.black,
              height: 0,
            ),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
            ),
            Divider(
              color: Colors.black,
              height: 0,
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.exit_to_app),
            ),
            Divider(
              color: Colors.black,
              height: 0,
            ),
            ListTile(
              title: Text("App Version: 1.0.0"),
            ),
          ],
        ),
      ),
    );
  }
}
