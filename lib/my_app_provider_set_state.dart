import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/res/theme/custom_theme.dart';
import 'package:todoapp/res/theme/theme_manager.dart';
import 'package:todoapp/state/user_preference.dart';
import 'package:todoapp/ui/tab_page_controller.dart';


class MyAppProviderSet extends StatefulWidget {
  const MyAppProviderSet({Key? key}) : super(key: key);

  @override
  _MyAppProviderSetStateState createState() => _MyAppProviderSetStateState();
}

class _MyAppProviderSetStateState extends State<MyAppProviderSet> {
  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


// ThemeMode? _themeMode = userPreferences.themeMode;

    //ThemeManager? _themeManager = ThemeManager();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  CustomTheme.darkTheme,
      home:   TabPageController(),
    );
  }
}