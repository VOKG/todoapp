import 'package:flutter/material.dart';
import 'package:todoapp/res/values/constants_colors.dart';

// предоставляем статический геттер используемый везде

class CustomTheme {
   static ThemeData get lightTheme { //1
      return ThemeData( //2
          primaryColor: COLOR_THEME_PRIMARY,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Montserrat', //3
          buttonTheme: ButtonThemeData( // 4
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
             buttonColor:COLOR_YELLOW,
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
            backgroundColor:COLOR_ACTION_BUTTON,
          ),
          dividerTheme: DividerThemeData(
              color:   COLOR_WHITE_DIVIDER
          )
      );
   }

   static ThemeData get darkTheme {
     return ThemeData(
         primaryColor:COLOR_GREEN_ACCENT,
         scaffoldBackgroundColor: Colors.black,
         fontFamily: 'Montserrat',
         textTheme: ThemeData.dark().textTheme,
         buttonTheme: ButtonThemeData(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
           buttonColor: COLOR_YELLOW,
         ),
       floatingActionButtonTheme: FloatingActionButtonThemeData(
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
         backgroundColor:COLOR_ACTION_BUTTON_DARK,
       ),
       dividerTheme: DividerThemeData(
         color:   COLOR_BLACK_DIVIDER
       )
     );
   }
}


