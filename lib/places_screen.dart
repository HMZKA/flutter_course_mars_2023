import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class PlacesScreen extends StatefulWidget {
  PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  double rate = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text('Find Places'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: Column(
        children: [
          Card(
            //  color: Colors.amber,
            elevation: 25,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Image.asset('images/stray.png'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sixty Dome Mosque',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      RatingStars(
                        value: rate,
                        onValueChanged: (value) {
                          setState(() {
                            rate = value;
                          });
                        },
                        animationDuration: Duration(seconds: 2),
                        valueLabelVisibility: false,
                        starColor: Colors.red,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Historical intrests'), Text('7.6mi')],
                  )
                ],
              ),
            ),
          ),
          Card(
            //  color: Colors.amber,
            elevation: 25,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Image.asset('images/stray.png'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sixty Dome Mosque',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      RatingStars(
                        value: rate,
                        onValueChanged: (value) {
                          setState(() {
                            rate = value;
                          });
                        },
                        animationDuration: Duration(seconds: 2),
                        valueLabelVisibility: false,
                        starColor: Colors.red,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Historical intrests'), Text('7.6mi')],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
