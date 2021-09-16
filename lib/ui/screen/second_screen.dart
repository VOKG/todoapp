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
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.black87,
                  Colors.orange,
                  Colors.red,
                ],
                begin: Alignment.bottomRight,
                end: Alignment.center
            )
        ),
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
