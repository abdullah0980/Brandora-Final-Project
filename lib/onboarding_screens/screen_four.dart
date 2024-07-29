import 'package:flutter/material.dart';
import 'package:tastygo_app/login_screens/login_Screen.dart';
import 'package:tastygo_app/onboarding_screens/screen_five.dart';
class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Vector 10.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Center(
                child: Text("Fast Delivery",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 6,),
              Padding(
                padding: const EdgeInsets.only(left: 45,right: 40),
                child: Text("Lorem Ipsum is simply dummy text of the printing industry"),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green),
                      shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ScreenFive()));
                    },
                    child: Text("Next",
                      style: TextStyle(
                          color: Colors.white),)),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      shadowColor: MaterialStatePropertyAll(Colors.green),
                      shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Text("Skip",
                      style: TextStyle(
                          color: Colors.green),)),
              ),

            ],
          ),



        ));
  }
}
