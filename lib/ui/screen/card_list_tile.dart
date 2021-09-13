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
      child: Card(
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),

        ),
      ),
      color:greenAccent,
      elevation:0.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 5.0,
        vertical: 5.0,
      ),
      child: ListTitleUi(subtitleCard,titleCard,isChecked),
      ),
    );
  }
}