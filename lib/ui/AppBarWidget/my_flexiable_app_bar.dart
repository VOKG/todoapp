import 'package:flutter/material.dart';

class MyFlexiableAppBar extends StatelessWidget {
  const MyFlexiableAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final double statusBarHeigth = MediaQuery
    .of(context)
    .padding
    .top;

    return Container(
      padding:EdgeInsets.only(top: statusBarHeigth),
      child: Center(
        child:  Text('Task:100',
            style:Theme.of(context).textTheme.headline6
        ),
      ),
    );
  }
}
