import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.red,
          leading: Icon(Icons.menu),
          title: Text('My first project'),
          centerTitle: true,
          // titleSpacing: 100,
          actions: [Icon(Icons.call), Icon(Icons.video_call)],
        ),
      ),
    );
  }
}
