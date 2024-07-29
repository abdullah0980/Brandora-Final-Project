import 'package:flutter/material.dart';
import 'package:tastygo_app/bottom_navigation_bar/bottom_navigation_bar_scen.dart';
import 'package:tastygo_app/bottom_navigation_bar/home_screen.dart';
class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
            Container(
            height: 430,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
                    ),
                    child: Stack(
              children: [
                    Padding(
                    padding: const EdgeInsets.only(top: 30,right: 30,left: 30),
                    child: Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10,right: 202),
                  child: Text("Email",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 130),
                  child: Text("Verification",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,),
                      hintText: "Email",
                      filled: true,
                      fillColor: Color(0xfffE5E5E5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.green),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        onPressed: (){
                          Navigator.push(
                              context,MaterialPageRoute(builder: (context) => BottomNavigationBarScreeen()));
                        },
                        child: Text("Send",
                          style: TextStyle(
                              color: Colors.white),)),
                  ),
                ),
              ],
            ),
                  ),
            ),
            ],
                ),
            ),
            ],
            ),
          ),
    ));
  }
}
