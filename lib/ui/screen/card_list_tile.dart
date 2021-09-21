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

            gradient: LinearGradient(
                colors: [

                  Colors.black87,
                  Colors.black45,
                  Colors.black87,
                ],
                begin: Alignment.center,
                end: Alignment.bottomRight
            ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(2, 9), // changes position of shadow
            ),
          ],

          ),

      child: ListTitleUi(subtitleCard,titleCard,isChecked),
      ),
    );
  }
}

