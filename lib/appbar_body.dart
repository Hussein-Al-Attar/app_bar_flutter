import 'package:flutter/material.dart';

class appBarBody extends StatefulWidget {
  const appBarBody({Key? key}) : super(key: key);

  @override
  State<appBarBody> createState() => _appBarBodyState();
}

class _appBarBodyState extends State<appBarBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          title: Text("image"),
          centerTitle: true,
          actions: [Icon(Icons.search)]),
      body: Image.asset("image/1.jpg", fit: BoxFit.cover),
    );
  }
}
