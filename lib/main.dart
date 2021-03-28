import 'package:flutter/material.dart';

void main() {
  runApp(basicFlutter());
}

// ignore: camel_case_types
class basicFlutter extends StatefulWidget {
  @override
  _basicFlutterState createState() => _basicFlutterState();
}

// ignore: camel_case_types
class _basicFlutterState extends State<basicFlutter> {
  var size = 150.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Basics",
      debugShowCheckedModeBanner: false,
      home: Container(
        // color: Colors.white,
        decoration: BoxDecoration(
            //decoration for the background
            color: Colors.tealAccent,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(2000),
                bottomRight: Radius.circular(500))),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
            ),
            FlutterLogo(
              //flutter logo and its properties
              size: size,
              colors: Colors.yellow,
              textColor: Colors.white,
              style: FlutterLogoStyle.stacked,
              duration: Duration(seconds: 2),
              curve: Curves.bounceInOut,
            ),
            FlatButton(
              //flat button
              hoverColor: Colors.yellowAccent,
              splashColor: Colors.green,
              child: Text("old  flat button", style: TextStyle(fontSize: 30)),
              onPressed: () {},
            ),
            RaisedButton(
              //raised button
              color: Colors.pink,
              textColor: Colors.white,
              child: Text("Raised button", style: TextStyle(fontSize: 20)),
              onPressed: () {
                setState(() {
                  size = size + 40.0;
                  if (size > 650.0) {
                    size = 150.0;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}