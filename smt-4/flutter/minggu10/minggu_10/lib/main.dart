import 'package:flutter/material.dart';
import 'package:minggu_10/get_data.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Get API',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: PageOne(),
      // getPages: pageRouteApp.pages,
      home: GetDataScreen(),
    );
  }
}
