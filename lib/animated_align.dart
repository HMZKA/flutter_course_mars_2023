import 'package:flutter/material.dart';

class AlignScreen extends StatefulWidget {
  const AlignScreen({super.key});

  @override
  State<AlignScreen> createState() => _AlignScreenState();
}

class _AlignScreenState extends State<AlignScreen> {
  bool x = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Align')),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.amber,
        child: AnimatedAlign(
          duration: Duration(seconds: 5),
          alignment: x ? Alignment.topLeft : Alignment.bottomRight,
          child: InkWell(
            onTap: () {
              setState(() {
                x = !x;
              });
            },
            child: FlutterLogo(
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
