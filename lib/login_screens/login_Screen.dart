import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tastygo_app/login_screens/reset_password.dart';
import 'package:tastygo_app/login_screens/signup_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _Passwordcontroller = TextEditingController();
  bool _Visible = true;
  void _obsecureText(){
    setState(() {
      _Visible = _Visible;

    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xfffE5E5E5),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                                  padding: const EdgeInsets.only(top: 15,left: 5,right: 160),
                                  child: Text("Log In",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),),
                                ),
                                SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: TextFormField(
                                    controller: _emailcontroller,
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
                                SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: TextFormField(
                                    onTap: _obsecureText,
                                    controller: _Passwordcontroller,
                                    obscureText: _Visible,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                                      hintText: "Password",
                                      filled: true,
                                      fillColor: Color(0xfffE5E5E5),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _Visible ? Icons.visibility_off_outlined: Icons.visibility_outlined,
                                        ),
                                        onPressed: (){
                                          setState(() {
                                            _Visible = !_Visible;
                                          });
                                        },
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 140,right: 10),
                                  child: TextButton(onPressed: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context) => const Reset_Password()));
                                  },
                                      child: Text("Forgot password?",
                                        style: TextStyle(color: Colors.black),)),
                                ),
                                SizedBox(height: 20,),
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
                                          Navigator.push(context,MaterialPageRoute(builder: (context) => SignUpScreen()));
                                        },
                                        child: Text("Login",
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
                SizedBox(height: 160,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text("Don't have an account?",
                        style: TextStyle(color: Colors.grey),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: TextButton(onPressed: (){
                        Navigator.pushReplacement(
                            context,MaterialPageRoute(builder: (context) => SignUpScreen()));
                      }, child: Text("SignUp",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,)),
                    )
                    ),
                  ],
                ),
                 ],
            ),
          ),
    ));
  }
}
