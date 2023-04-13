import 'dart:async';

import 'package:flutter/material.dart';

class TweenScreen extends StatefulWidget {
  const TweenScreen({super.key});

  @override
  State<TweenScreen> createState() => _TweenScreenState();
}

class _TweenScreenState extends State<TweenScreen> {
  var color = Colors.amber;

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      color = Colors.red;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Tween'),
        centerTitle: true,
      ),
      body: Center(
        child: TweenAnimationBuilder(
          curve: Curves.bounceOut,
          duration: Duration(seconds: 2),
          tween: Tween<double>(begin: 100, end: 300),
          builder: (context, value, child) {
            return Container(
              color: color,
              width: value,
              height: value,
            );
          },
        ),
      ),
    );
  }
}
