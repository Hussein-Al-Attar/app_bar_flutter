import 'package:flutter/material.dart';
import 'package:app_bar_flutter/developer/developer.dart';
import 'appbar_body.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "image": (context) => const appBarBody(),
        "De": (context) => const Developer(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
