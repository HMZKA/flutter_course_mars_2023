import 'package:flutter/material.dart';
import 'package:flutter_course_1/users.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) => Image.asset(images[index]),
        itemCount: images.length,
      ),
    );
  }
}


//  Image(image: AssetImage(images[index])),