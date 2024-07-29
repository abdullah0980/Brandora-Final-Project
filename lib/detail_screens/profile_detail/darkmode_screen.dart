import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Models/themes.dart';
class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.green,)),
        backgroundColor: Colors.white,
        title: const  Text('Themes',
          style: TextStyle(
            color: Colors.black,
          ),),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          RadioListTile<ThemeMode>(
              title: Text("Light Mode"),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme
          ),
          RadioListTile<ThemeMode>(
              title: Text("Dark Mode"),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme
          ),

        ],
      ),

    );
  }
}
