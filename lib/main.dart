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
            actions: [
              IconButton(
                icon: Icon(Icons.call),
                onPressed: () {},
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.video_call))
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: 200,
              height: 200,
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.amber],
                    // stops: [0.25, 0.75],
                    //  transform: GradientRotation(25)
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                'My first project',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.green,
                    backgroundColor: Colors.amber),
              ),
            ),
          ),
        ));
  }
}
