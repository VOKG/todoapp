import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/res/values/colors.dart';


import 'list_title_ui.dart';

class CardListTile extends StatelessWidget {
  final String titleCard;
  final String subtitleCard;
 bool isChecked = false;

  CardListTile({required this.titleCard, required this.subtitleCard,
  required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(left: 10, top: 2, right: 8, bottom: 1),
        decoration: BoxDecoration(
            //color: Colors.black54,

            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(15)
            ),
            gradient: LinearGradient(
                colors: [
                  black62Color,
                  black40Color,
                  black59Color ,

                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft
            ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(3, 9), // changes position of shadow
            ),
          ],

          ),

      child: ListTitleUi(subtitleCard,titleCard,isChecked),
      ),
    );
  }
}

