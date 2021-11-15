import 'package:flutter/material.dart';
import 'package:todoapp/res/values/constants_colors.dart';
import 'package:todoapp/res/values/styles.dart';

class SecondScreen extends StatelessWidget {
  final String title;
  final String subtitle;
SecondScreen({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration:myBoxDecoration04(),
      child: Column(
        children: [
          Center(
            child: Text(
                title,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 10
                )
            ),
          ),
          Center(
            child: Text(
                subtitle,
                style: TextStyle(
                    color: Colors.white70,
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
