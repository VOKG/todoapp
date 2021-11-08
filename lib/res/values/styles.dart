

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants_colors.dart';

 BoxDecoration myBoxDecoration01(){
  return BoxDecoration(
   border: Border.all(color:  COLOR_INDIGO_500, width: 1),
   boxShadow: [
    BoxShadow(
     blurRadius:1,
     offset: Offset(1, 1), // changes position of shadow
    ),
    BoxShadow(
     color: Colors.black.withOpacity(0.1),
     spreadRadius: 1,
     blurRadius: 6,
     offset: Offset(-1, -1), // changes position of shadow
    ),
   ],
   borderRadius: BorderRadius.circular(5),
   color:  COLOR_INDIGO_500,
  );
}

BoxDecoration myBoxDecoration02(BuildContext context){
 return  BoxDecoration(
  //color: Colors.black54,
  color: Theme.of(context).accentColor,
  boxShadow: [
   BoxShadow(
    color: Colors.black.withOpacity(0.4),
    spreadRadius: 5,
    blurRadius: 3,
    offset: Offset(2, 9), // changes position of shadow
   ),
  ],
 );
}

BoxDecoration myBoxDecoration03(){
  return BoxDecoration(
      gradient: LinearGradient(
          colors: [
           Colors.black,
           Colors.white10,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.center
      )
  );
}

BoxDecoration myBoxDecoration04(){
 return BoxDecoration(
     gradient: LinearGradient(
         colors: [
          Colors.black,
          Colors.greenAccent,
         ],
         begin: Alignment.bottomRight,
         end: Alignment.center
     )
 );
}

// CardListTitle myBoxDecoration05

BoxDecoration myBoxDecorationCardListTitle (){
  return  BoxDecoration(
    border:  Border.all(
        color: COLOR_BLACK,
        width: 1
    ),       //color: Colors.black54,
    color:  COLOR_INDIGO_500,
    boxShadow: [
      BoxShadow(
        color: COLOR_BLACK,
        spreadRadius: 1,
        blurRadius: 5.0,
        offset: Offset(1.0, 2.0), // changes position of shadow
      ),
      BoxShadow(
        color:COLOR_BLACK,
        spreadRadius: 1,
        blurRadius: 5.0,
        offset: Offset(-1.0, -2.0), // changes position of shadow
      ),
    ],
  );
}
// MyAvatar
BoxDecoration myBoxDecorationMyAvatar (){
   return  BoxDecoration(
     borderRadius: BorderRadius.only(
         topLeft: Radius.circular(50),
         topRight: Radius.circular(50),
         bottomLeft: Radius.circular(50),
         bottomRight: Radius.circular(50)
     ),
     boxShadow: [
       BoxShadow(
         color: Colors.black.withOpacity(0.4),
         spreadRadius: 2,
         blurRadius: 3,
         offset: Offset(1, 1), // changes position of shadow
       ),
     ],
   );
}

BoxDecoration myBoxDecoration07 (){
   return BoxDecoration(
       color: Colors.white,
       shape:BoxShape.circle,
       border: Border.all(
         color:Colors.black,
         width: 1,
       )
   );
}
// DismissibleWidget
BoxDecoration myBoxDecorationDismissible(){
   return BoxDecoration(
     color: Colors.white70,
     borderRadius: BorderRadius.only(
         topLeft: Radius.circular(20),
         topRight: Radius.circular(20),
         bottomLeft: Radius.circular(20),
         bottomRight: Radius.circular(20)
     ),
   );
}