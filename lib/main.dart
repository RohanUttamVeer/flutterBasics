import 'package:flutter/material.dart';

void main() {
  runApp(basicFlutter());
}

// ignore: camel_case_types
class basicFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        // color: Colors.white,
        decoration: BoxDecoration(           //decoration for the background
            color: Colors.tealAccent,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(2000),
                bottomRight: Radius.circular(500))),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(30),
              ),
              FlatButton(                               //flat button 
                hoverColor: Colors.yellowAccent,
                splashColor: Colors.green,
                child: Text("old  flat button", style: TextStyle(fontSize: 30)),
                onPressed: () => debugPrint('flat button pressed'),
              ), 
              RaisedButton(                            //raised button
                  onPressed: () => debugPrint('raised button pressed'),
                  color: Colors.pink,
                  textColor: Colors.white,
                  child: Text(
                    "Raised button",
                    style: TextStyle(fontSize: 20),
                  )),
            ],
          ),
        ),
    );
  }
}
