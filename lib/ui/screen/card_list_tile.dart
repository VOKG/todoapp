
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'list_title_ui.dart';

class CardListTitle extends StatelessWidget {
  final String titleCard;
  final String subtitleCard;
 bool isChecked = false;

  CardListTitle({required this.titleCard, required this.subtitleCard,
  required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(left: 10, top: 2, right: 10, bottom: 1),
        decoration:
        BoxDecoration(      border:  Border.all(
            color: Colors.blue,
            width: 1
        ),       //color: Colors.black54,
            color: Colors.black,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 1,
              blurRadius: 15.0,
              offset: Offset(4.0, 4.0), // changes position of shadow
            ),
            BoxShadow(
              color: Colors.blue.shade500,
              spreadRadius: 1,
              blurRadius: 15.0,
              offset: Offset(-4.0, -4.0), // changes position of shadow
            ),
          ],
          ),
      child: CardView(subtitleCard,titleCard,isChecked),
      ),
    );
  }
}

