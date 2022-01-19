
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/res/values/styles.dart';
import 'list_title_ui.dart';

class CardListTitle extends StatelessWidget {
  final String titleCard;
  final String subtitleCard;
String isChecked;

  CardListTitle({required this.titleCard, required this.subtitleCard,
  required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
       // margin: EdgeInsets.only(left: 10, top: 2, right: 10, bottom: 1),
      // decoration: myBoxDecorationCardListTitle(),
      ),
    );
  }
}

