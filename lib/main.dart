import 'package:flutter/material.dart';
import 'package:flutter_course_1/animated_align.dart';
import 'package:flutter_course_1/animated_container.dart';
import 'package:flutter_course_1/animation_controller.dart';
import 'package:flutter_course_1/tween_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationScreen(),
    );
  }
}
