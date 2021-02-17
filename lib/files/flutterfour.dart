import 'package:flutter/material.dart';

class FlutterFour extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Fourth Screen",style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
        ),
        color: Colors.amber,
      ),
    );
  }

}