import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/res/values/constants_colors.dart';
import 'package:provider/provider.dart';


class CustomTheme with ChangeNotifier{


  static bool _isDarkTheme = true;

  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

 toggleTheme() {
    _isDarkTheme = !_isDarkTheme;

    notifyListeners();

  }


  // предоставляем статический геттер используемый везде

  static ThemeData get lightTheme { //1
      return ThemeData( //2
          primaryColor: COLOR_THEME_PRIMARY,
        primaryColorLight:COLOR_GREEN_ACCENT,
          scaffoldBackgroundColor: COLOR_BLACK_DIVIDER,
          fontFamily: 'Montserrat', //3
           backgroundColor:COLOR_BLACK_DIVIDER,
          primaryIconTheme:IconThemeData(color:COLOR_BLACK_DIVIDER ) ,
          buttonTheme: ButtonThemeData( // 4
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
             buttonColor:COLOR_YELLOW,
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
            backgroundColor:COLOR_ACTION_BUTTON_DARK,
          ),
          dividerTheme: DividerThemeData(
              color:   COLOR_WHITE_DIVIDER
          ),
        textTheme: TextTheme(

            headline1:
            GoogleFonts.nunito(
              fontWeight: FontWeight.bold,
              fontSize:15,
              backgroundColor: COLOR_BLACK_W,
            ),

          headline2:GoogleFonts.nunito(
              fontWeight: FontWeight.bold,
              fontSize:14,
              color: COLOR_BLACK_W
          ),
          headline3:GoogleFonts.nunito(
              fontWeight: FontWeight.bold,
              fontSize:18,
              color: COLOR_BLACK_W
          ),

          headline6:
          GoogleFonts.nunito(
            fontWeight: FontWeight.w800,
            fontSize:30,
          ),
        ),

        appBarTheme: AppBarTheme(
          backgroundColor:COLOR_WH_APPBAR
        ),
          bottomAppBarColor: COLOR_BL_SCAFFOLD ,
        iconTheme: IconThemeData(
          color:  COLOR_BLACK_W
        ),

      );
   }

   static ThemeData get darkTheme {
     return ThemeData(
         primaryColor:COLOR_GREEN_ACCENT,
       primaryColorLight:COLOR_GREEN_ACCENT,
         scaffoldBackgroundColor: COLOR_BL_SCAFFOLD,
         fontFamily: 'Montserrat',
         backgroundColor:COLOR_WHITE_DIVIDER ,
         buttonTheme: ButtonThemeData(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
           buttonColor: COLOR_YELLOW,
         ),
       floatingActionButtonTheme: FloatingActionButtonThemeData(
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
         backgroundColor:COLOR_BL_APPBAR,
       ),
       dividerTheme: DividerThemeData(
         color:   COLOR_BLACK_DIVIDER
       ),
       textTheme:
      TextTheme(

         headline2:GoogleFonts.nunito(
           fontWeight: FontWeight.bold,
           fontSize:14,
           color:COLOR_TEXT_WH
         ),

        headline3:GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
            fontSize:18,
            color:COLOR_TEXT_WH
        ),

         headline6: GoogleFonts.nunito(
           fontWeight: FontWeight.w800,
           fontSize:30,
             color:COLOR_TEXT_WH
         ),

       ),

       appBarTheme: AppBarTheme(
           backgroundColor: COLOR_BL_APPBAR
       ),
       iconTheme: IconThemeData(
           color:  COLOR_BLACK_DIVIDER
       ),
     );

   }
}


