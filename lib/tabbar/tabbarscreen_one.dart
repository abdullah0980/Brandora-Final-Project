import 'package:flutter/material.dart';
import 'package:tastygo_app/detail_screens/chats_detail/deepak.dart';
import 'package:tastygo_app/detail_screens/chats_detail/joe.dart';
import 'package:tastygo_app/detail_screens/chats_detail/joes_butreller.dart';
import 'package:tastygo_app/detail_screens/chats_detail/mark_wood.dart';
import 'package:tastygo_app/detail_screens/chats_detail/milky_john.dart';
import 'package:tastygo_app/detail_screens/chats_detail/paranav_ray.dart';
import 'package:tastygo_app/detail_screens/chats_detail/rockey.dart';
import 'package:tastygo_app/detail_screens/chats_detail/roy.dart';
class TabbarScreen_One extends StatefulWidget {
  const TabbarScreen_One({super.key});

  @override
  State<TabbarScreen_One> createState() => _TabbarScreen_OneState();
}

class _TabbarScreen_OneState extends State<TabbarScreen_One> {
  final List<String> trailing = [
    '12:25 PM',
    '11:00 Am',
    '10:45 Am',
    '9:00 Am',
    '8:30 Am',
    '8:15 Am',
    '7:56 Am',
    '3:00 Am',
  ];
  final List<String> text = [
    'Pranav Ray',
    'Milky john',
    'Mark Wood',
    'joes Butreller',
    'Deepak Chahar',
    'Rockey Ponting',
    'joe Root',
    'Roy',
  ];
  final List<String> images = [
    'assets/images/Ellipse 1.png',
    'assets/images/Ellipse 2.png',
    'assets/images/Ellipse 3.png',
    'assets/images/Ellipse 4.png',
    'assets/images/Ellipse 5.png',
    'assets/images/Ellipse 6.png',
    'assets/images/Ellipse 7.png',
    'assets/images/Ellipse 8.png',

  ];
  final List<Function> function = [
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Paranavray_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Milky_John())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Mark_Wood())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Joes_Butreler())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Deepak_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Rockey())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Joe())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Roy())),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
          Container(
          height: 495,
          width: double.infinity,
          child: ListView.builder(
            itemCount: function.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () => function[index](context),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images [index]),
                ),
                title: Text(text [index].toString(),
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold),),
                trailing: Text(trailing [index].toString()),



              );
            },),
        ),
        ],
      ),
    ),
    );
  }
}
