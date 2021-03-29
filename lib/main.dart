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
              // colors: Colors.yellow,
              //flutter logo and its properties
              size: size,
              textColor: Colors.white,
              style: FlutterLogoStyle.stacked,
              duration: Duration(seconds: 2),
              curve: Curves.bounceInOut,
            ),

            ElevatedButton(
              onPressed: () {
                debugPrint("elevated Button pressed");
              },
              // onPressed: null,
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.blue,
                onSurface: Colors.black, //works when onPressed is null
              ),
              child: Text('elevated button'),
            ),

            // ignore: deprecated_member_use
            FlatButton(
              // onPressed: null,
              //flat button
              focusColor: Colors.red,
              hoverColor: Colors.pink,
              splashColor: Colors.yellow,
              child: Text("old  flat button", style: TextStyle(fontSize: 30)),
              onPressed: () {},
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              // onPressed: null,
              //raised button
              disabledColor: Colors.blue, //works when onPressed is null
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
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    //icons and their properties added
                    Icons.favorite,
                    color: Colors.pink,
                    size: 30.0,
                    semanticLabel: 'Text to anounce acessibity modes',
                  ),
                  Icon(
                    Icons.android,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.headset,
                    color: Colors.orange,
                    size: 30.0,
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
