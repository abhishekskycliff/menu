import 'package:flutter/material.dart';

class FlutterThree extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text("Third Screen",style: TextStyle(
              fontWeight: FontWeight.bold,
            ),)
        ),
        color: Colors.blue,
      ),
    );
  }

}