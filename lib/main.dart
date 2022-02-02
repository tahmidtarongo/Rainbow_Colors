import 'package:flutter/material.dart';

void main() {
  runApp(Rainbow());
}

class Rainbow extends StatefulWidget {
  @override
  _RainbowState createState() => _RainbowState();
}

class _RainbowState extends State<Rainbow> {
  int red = int.parse('0xfff44336');
  int orange = int.parse('0xffff5722');
  int yellow = int.parse('0xffffeb3b');
  int green = int.parse('0xff8bc34a');
  int lightBlue = int.parse('0xff29b6f6');
  int blue = int.parse('0xff1976d2');
  int violet = int.parse('0xff6200ea');
  int defaultColor = int.parse('0xff303030');
  void colorChange(int press) {
    if (press == 0) {
      setState(() {
        defaultColor = red;
      });
    } else if (press == 1) {
      setState(() {
        defaultColor = orange;
      });
    } else if (press == 2) {
      setState(() {
        defaultColor = yellow;
      });
    } else if (press == 3) {
      setState(() {
        defaultColor = green;
      });
    } else if (press == 4) {
      setState(() {
        defaultColor = lightBlue;
      });
    } else if (press == 5) {
      setState(() {
        defaultColor = blue;
      });
    } else if (press == 6) {
      setState(() {
        defaultColor = violet;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(defaultColor),
          title: const Center(
            child: Text('RainBow Color'),
          ),
        ),
        body: Column(
          children: [
            Icon(
              Icons.favorite,
              size: 170.00,
              color: Color(defaultColor),
            ),
            TextButton(
              onPressed: () {
                colorChange(0);
              },
              child: Container(
                height: 50.0,
                width: 800.0,
                color: Color(red),
              ),
            ),
            TextButton(
              onPressed: () {
                colorChange(1);
              },
              child: Container(
                height: 50.0,
                width: 800.0,
                color: Color(orange),
              ),
            ),
            TextButton(
              onPressed: () {
                colorChange(2);
              },
              child: Container(
                height: 50.0,
                width: 800.0,
                color: Color(yellow),
              ),
            ),
            TextButton(
              onPressed: () {
                colorChange(3);
              },
              child: Container(
                height: 50.0,
                width: 800.0,
                color: Color(green),
              ),
            ),
            TextButton(
              onPressed: () {
                colorChange(4);
              },
              child: Container(
                height: 50.0,
                width: 800.0,
                color: Color(lightBlue),
              ),
            ),
            TextButton(
              onPressed: () {
                colorChange(5);
              },
              child: Container(
                height: 50.0,
                width: 800.0,
                color: Color(blue),
              ),
            ),
            TextButton(
              onPressed: () {
                colorChange(6);
              },
              child: Container(
                height: 50.0,
                width: 800.0,
                color: Color(violet),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
