import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  GridScreen({super.key});
  List<String> strings = [
    "asdf",
    "ghjk",
    "rtyuii",
    "bnmm",
    "vnm",
    "vnmnm",
    "vnmnm",
    "vnmnm",
    "gfjnhj",
    "dfg;lfmg",
    "dfg;lfmg",
    "dfg;lfmg",
    "dfg;lfmg",
    "dfg;lfmg",
    "dfg;lfmg",
    "dfg;lfmg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: GridView.count(
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
          crossAxisCount: 3,
          children: strings.map((e) {
            return Container(
              color: Colors.amber,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(e),
                  Divider(
                    color: Colors.red,
                    thickness: 3,
                  )
                ],
              )),
            );
          }).toList()),
    );
  }
}
