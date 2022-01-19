import 'package:flutter/material.dart';

import 'package:todoapp/res/values/styles.dart';

class DismissibleWidget<T> extends StatelessWidget {
  final T item;
  final Widget child;
  final DismissDirectionCallback onDismissed;

  const DismissibleWidget({
    required this.item,
    required this.child,
    required this.onDismissed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Dismissible(
    key: ObjectKey(item),
    background: buildSwipeActionLeft(),
    secondaryBackground: buildSwipeActionRight(),
    child: child,
    onDismissed: onDismissed,
  );

  Widget buildSwipeActionLeft() => Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.symmetric(horizontal: 20),
    color: Colors.white70,
    child: Icon(Icons.archive_sharp, color: Colors.indigoAccent, size: 32),
  );

  Widget buildSwipeActionRight() => Container(

    decoration: myBoxDecorationDismissible(),

    alignment: Alignment.centerRight,

    padding:  EdgeInsets.only(left: 25, top: 1, right: 10, bottom: 1),

    child: Icon(Icons.delete_forever, color: Colors.black87, size: 32),
  );
}