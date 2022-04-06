import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          title: const Text("App Bar"),
          titleSpacing: 0,
          //centerTitle: true,
          actions: [
            PopupMenuButton(
              itemBuilder: (context) =>
                  [const PopupMenuItem(child: Text("Developer"))],
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("De");
                },
                icon: const Icon(Icons.developer_board)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications_none)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
          // backgroundColor: Colors.red,
          flexibleSpace: Container(
              decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            // image: DecorationImage(image: NetworkImage()),
          )),
          elevation: 20,
          bottom: const TabBar(indicatorColor: Colors.white, tabs: [
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
                  child: const Text("open"))),
          const Center(
              child: Text(
            "feed",
            style: TextStyle(fontSize: 28),
          )),
          const Center(
              child: Text(
            "person",
            style: TextStyle(fontSize: 28),
          )),
          const Center(
              child: Text(
            "settings",
            style: TextStyle(fontSize: 28),
          )),
        ]),
      ),
    );
  }
}
