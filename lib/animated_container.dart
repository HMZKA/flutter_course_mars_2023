import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_course_1/tween_animation.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  var color = Colors.purple;
  double size = 100;
  int count = 0;
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 5), (timer) {
      if (size == 100) {
        setState(() {
          size = 300;
          color = Colors.green;
          count++;
        });
      } else {
        setState(() {
          size = 100;
          color = Colors.purple;
          count++;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated container')),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 3),
          width: size,
          height: size,
          color: color,
          onEnd: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => TweenScreen(),
            ));
          },
        ),
      ),
    );
  }
}
