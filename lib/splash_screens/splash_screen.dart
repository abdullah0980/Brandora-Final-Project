import 'package:flutter/material.dart';
import 'package:tastygo_app/onboarding_screens/screen_one.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateathome();
  }
  _navigateathome()async{
    await Future.delayed( const Duration(seconds: 3));
    Navigator.pushReplacement(
        context,MaterialPageRoute(builder: (context) =>screen_one() ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Splash.png")),
        ),
      ),

    );
  }
}
