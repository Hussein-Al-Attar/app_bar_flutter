import 'package:flutter/material.dart';

// ignore: camel_case_types
class appBarBody extends StatefulWidget {
  const appBarBody({Key? key}) : super(key: key);

  @override
  State<appBarBody> createState() => _appBarBodyState();
}

// ignore: camel_case_types
class _appBarBodyState extends State<appBarBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
          title: const Text("image"),
          centerTitle: true,
          actions: const [Icon(Icons.search)]),
      body: Image.asset("image/1.jpg", fit: BoxFit.cover),
    );
  }
}
