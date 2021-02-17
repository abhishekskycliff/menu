import 'package:flutter/material.dart';

class FlutterTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text("Second Screen",style: TextStyle(
              fontWeight: FontWeight.bold,
            ),)
        ),
        color: Colors.green,
      ),
    );
  }
}