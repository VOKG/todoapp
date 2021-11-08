import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/res/values/constants_colors.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context)=>UserPreference(),
        )
      ],
      child:MyApp(),
    );
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final userPreferences = Provider.of<UserPreference>(context);

    ThemeMode? _themeMode = userPreferences.themeMode;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        primarySwatch:Colors.deepOrange,
        primaryColor: Colors.teal,
        brightness: Brightness.light,

      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Colors.black,
        brightness: Brightness.dark,
      ),
      home:   TabPageController(),
    );
  }
}