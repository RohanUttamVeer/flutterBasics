import 'package:flutter/material.dart';

void main() {
  runApp(basicFlutter());
}

// ignore: camel_case_types
class basicFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Row(
        children: [ElevatedButton(onPressed: () {},
        style: ElevatedButton.styleFrom(elevation: 10),
        child: Text(' Elevated Button'))
        ],
      ),
    );
  }
}