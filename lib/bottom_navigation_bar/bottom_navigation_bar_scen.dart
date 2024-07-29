import 'package:flutter/material.dart';
import 'package:tastygo_app/bottom_navigation_bar/chat_screen.dart';
import 'package:tastygo_app/bottom_navigation_bar/dicover_screen.dart';
import 'package:tastygo_app/bottom_navigation_bar/home_screen.dart';
import 'package:tastygo_app/bottom_navigation_bar/profile_screen.dart';
class BottomNavigationBarScreeen extends StatefulWidget {
  const BottomNavigationBarScreeen({super.key});

  @override
  State<BottomNavigationBarScreeen> createState() => _BottomNavigationBarScreeenState();
}

class _BottomNavigationBarScreeenState extends State<BottomNavigationBarScreeen> {
  int _slectedindex = 0;
  static const TextStyle optionalstyle = TextStyle(
    fontSize: 20,fontWeight: FontWeight.bold
  );
  static  List<Widget> _widgetoption = <Widget>[
    Home_Screen(),
    DiscoverScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];
  void onItemTapped(int index){
    setState(() {
      _slectedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetoption.elementAt(_slectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        selectedIconTheme: IconThemeData(color: Colors.green,),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _slectedindex,
        selectedItemColor: Colors.green,
        onTap: onItemTapped,
      ),

    );
  }
}
