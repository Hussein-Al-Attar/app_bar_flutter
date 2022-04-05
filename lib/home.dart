import 'dart:ui';

import 'package:flutter/material.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String title = "App Bar";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Text("$title"),
          titleSpacing: 0,
          //centerTitle: true,
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(child: Text("Developer")),
              ],
            ),
            IconButton(
                onPressed: () {
                  print("hi");
                },
                icon: Icon(Icons.developer_board)),
            IconButton(
                onPressed: () {
                  print("hi");
                },
                icon: Icon(Icons.notifications_none)),
            IconButton(
                onPressed: () {
                  print("hi");
                },
                icon: Icon(Icons.search)),
          ],
          // backgroundColor: Colors.red,
          flexibleSpace: Container(
              decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            // image: DecorationImage(image: NetworkImage()),
          )),
          elevation: 20,
          bottom: TabBar(indicatorColor: Colors.white, tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.feed)),
            Tab(icon: Icon(Icons.person)),
            Tab(icon: Icon(Icons.settings)),
          ]),
        ),
        body: TabBarView(children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("image");
                  },
                  child: Text("open"))),
          Center(
              child: Text(
            "feed",
            style: TextStyle(fontSize: 28),
          )),
          Center(
              child: Text(
            "person",
            style: TextStyle(fontSize: 28),
          )),
          Center(
              child: Text(
            "settings",
            style: TextStyle(fontSize: 28),
          )),
        ]),
      ),
    );
  }
}
