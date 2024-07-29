import 'package:flutter/material.dart';
import 'package:tastygo_app/bottom_navigation_bar/home_screen.dart';
import 'package:tastygo_app/login_screens/login_Screen.dart';
class ScreenFive extends StatelessWidget {
  const ScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
            children: [
              Container(
                height: 758,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/olenka-kotyk-iRguZkRTQyA-unsplash.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 20,right: 200,top: 530),
                     child: Text("Welcome To",
                       style: TextStyle(
                         fontSize: 16,
                           fontWeight: FontWeight.bold,
                           color: Colors.white),),
                   ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 550),
                      child: Text("Tasty Go",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 30,top: 610),
                      child: Text("Make your life happy and order the world best food.",
                        style: TextStyle(
                            color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 660),
                      child: SizedBox(
                        height: 60,
                        width: 300,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: const WidgetStatePropertyAll(Colors.green),
                            shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))
                          ),
                            onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                            },
                            child: Text("Get Started",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                ),
              ),

              ],
          ),
    );
  }
}
