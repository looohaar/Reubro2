import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reubro_test_2/view/screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
