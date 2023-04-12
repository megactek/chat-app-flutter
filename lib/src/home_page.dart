// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'chat_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text('Frezy Chat'),
        ),
        body: new ChatScreen());
  }
}
