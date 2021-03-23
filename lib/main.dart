import 'package:flutter/material.dart';

void main() {
  runApp(basicFlutter());
}

// ignore: camel_case_types
class basicFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: RaisedButton(
          onPressed: () {},
          child: Text('hello'),
        ),
      ),
    );
  }
}
ignore: camel_case_types
class basicFlutter_ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
            child:ElevatedButton(onPressed: () {},
                style: ElevatedButton.styleFrom(elevation: 10),
                child: Text(' Elevated Button'))
        ),
      ),
    );
  }
