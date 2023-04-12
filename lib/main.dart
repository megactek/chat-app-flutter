import 'package:flutter/material.dart';
import 'src/home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return new MaterialApp(
      title: 'Chat App',
      home: new HomePage(),
    );
  }
}
