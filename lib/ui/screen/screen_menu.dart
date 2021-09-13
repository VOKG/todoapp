import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todoapp/res/values/imageData.dart';
import 'package:todoapp/ui/screen/avatar_user.dart';

class ScreenMenu extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Appproject'),
        backgroundColor: Colors.amberAccent,
      ),
      body: GridView.count(
      primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount:2,
      children: <Widget> [
        card(),
        card(),
        card(),
        card(),
        card(),
        card(),
        card(),
        AvatarUser(),
        ButtonTest()
      ],
      ),

    );
  }
  Widget card (){
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.blue,
      child: Row(
        children: [
          CircleAvatar(
            radius: 52,
            child: imageAva,

          ),

          Text('1')
        ],
      ),
    );

  }

}

class ButtonTest extends StatelessWidget {

  Function? function;




  @override
  Widget build(BuildContext context) {

   return Container(
     padding: const EdgeInsets.all(8),
     decoration: BoxDecoration(
         gradient: LinearGradient(
             colors: [
               Colors.pink,
               Colors.orange
             ],
             begin: Alignment.topCenter,
             end: Alignment.bottomCenter
         )
     ),
     width: 20,
     height: 20,


   );
  }

}

// градиент для кнопки
Widget gradientButton(){
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.pink,
          Colors.orange
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
      )
    ),
  );
}
