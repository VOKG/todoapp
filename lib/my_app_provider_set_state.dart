import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/res/theme/config.dart';
import 'package:todoapp/res/theme/custom_theme.dart';
import 'package:todoapp/state/tabBarChange.dart';
import 'package:todoapp/ui/tab_page_controller.dart';

class MyAppProviderSet extends StatefulWidget {
  const MyAppProviderSet({Key? key}) : super(key: key);

  @override
  _MyAppProviderSetStateState createState() => _MyAppProviderSetStateState();
}

class _MyAppProviderSetStateState extends State<MyAppProviderSet> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
    dataChange.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
      ChangeNotifierProvider(create: (_) => DataChange(),),
         // ChangeNotifierProvider(create: (_) =>  CustomTheme(),)

    ],
        child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// ThemeMode? _themeMode = userPreferences.themeMode;

    //ThemeManager? _themeManager = ThemeManager();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      home: TabPageController(),
    );
  }
}
