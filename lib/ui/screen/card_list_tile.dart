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
        margin: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
        decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
            ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],

          ),

      child: ListTitleUi(subtitleCard,titleCard,isChecked),
      ),
    );
  }
}

