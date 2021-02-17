import 'package:flutter/material.dart';

class FlutterOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text("First Screen",style: TextStyle(
              fontWeight: FontWeight.bold,
            ),)
        ),
       color: Colors.pinkAccent,
      ),
    );
  }

}