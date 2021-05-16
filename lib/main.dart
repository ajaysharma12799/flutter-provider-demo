import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Provider Demo",
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
