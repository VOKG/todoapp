import 'package:flutter/material.dart';
import 'package:todoapp/res/values/constants_colors.dart';

// предоставляем статический геттер используемый везде
class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData( // 2
        primaryColor: COLOR_YELLOW,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat', // 3
        textTheme: ThemeData.dark().textTheme,
        buttonTheme: ButtonThemeData( // 4
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0)),
          buttonColor:   COLOR_INDIGO,
        )
    );
  }

  static ThemeData get darkTheme {
    return ThemeData( // 2
        primaryColor: COLOR_YELLOW,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Montserrat', // 3
        textTheme: ThemeData.dark().textTheme,
        buttonTheme: ButtonThemeData( // 4
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0)),
          buttonColor:  COLOR_INDIGO,
        )
    );
  }
}