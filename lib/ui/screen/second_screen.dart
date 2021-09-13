import 'package:flutter/material.dart';
import 'package:todoapp/res/values/colors.dart';

class SecondScreen extends StatelessWidget {
  final String title;
  final String subtitle;
SecondScreen({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: black,
      child: Column(
        children: [
          Center(
            child: Text(
                title,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 10
                )
            ),
          ),
          Center(
            child: Text(
                subtitle,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 10
                )
            ),
          ),
        ],
      )
      ,
    ),
    );
  }
}
