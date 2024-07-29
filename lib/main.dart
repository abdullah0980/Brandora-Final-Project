import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tastygo_app/splash_screens/splash_screen.dart';

import 'Models/themes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (_) => ThemeChanger()),

        ],
        child: Builder(
            builder: (BuildContext context){
              final themeChanger = Provider.of<ThemeChanger>(context);
              return MaterialApp(
                themeMode: themeChanger.themeMode,
                theme: ThemeData(
                  brightness: Brightness.light,
                ),
                darkTheme: ThemeData(
                  brightness: Brightness.dark,
                  primaryColor: Colors.grey[800],
                  scaffoldBackgroundColor: Colors.grey[800],
                ),
                debugShowCheckedModeBanner: false,
                home: const SplashScreen(),
              );
            })
    );
  }
}
