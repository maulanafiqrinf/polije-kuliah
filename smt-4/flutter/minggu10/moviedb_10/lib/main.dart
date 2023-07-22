import 'package:flutter/material.dart';
import 'package:moviedb_10/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'moviedb update',
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}
