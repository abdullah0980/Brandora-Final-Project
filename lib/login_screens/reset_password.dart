import 'package:flutter/material.dart';
class Reset_Password extends StatefulWidget {
  const Reset_Password({super.key});

  @override
  State<Reset_Password> createState() => _Reset_PasswordState();
}

class _Reset_PasswordState extends State<Reset_Password> {
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
                              padding: const EdgeInsets.only(top: 15,left: 5,right: 120),
                              child: Text("Reset Passwrod",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: TextFormField(
                                controller: _Passwordcontroller,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                                  hintText: "New Password",
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
                                  hintText: " Confirm Password",
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
                            SizedBox(height: 20,),
                            SizedBox(
                              height: 50,
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: const WidgetStatePropertyAll(Colors.green),
                                      shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          )),
                                    ),
                                    onPressed: (){
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            backgroundColor: Colors.white,
                                            elevation: 20,
                                            behavior: SnackBarBehavior.floating,
                                            content: Column(
                                              children: [
                                                Container(
                                                  height: 80,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius: BorderRadius.circular(500),
                                                  ),
                                                  child: const Icon(Icons.gpp_good,color: Colors.white,size: 50,),
                                                ),
                                                const  Center(
                                                  child: Text("Password Reset Successfully",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black),),
                                                ),
                                                const  Center(
                                                  child: Text("Your password has been reset successfully",
                                                    style: TextStyle(
                                                        color: Colors.black),),
                                                ),
                                                const    SizedBox(height: 10,),
                                                SizedBox(
                                                  height: 50,
                                                  width: double.infinity,
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                                    child: ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor: WidgetStatePropertyAll(Colors.green),
                                                            shape: WidgetStatePropertyAll(
                                                                RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.circular(10),
                                                                ))
                                                        ),
                                                        onPressed: (){
                                                          Navigator.pop(context);
                                                        },
                                                        child: const Text("Login",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight.bold
                                                              ,color: Colors.white),)),
                                                  ),
                                                ),

                                              ],
                                            )),
                                      );
                                    },
                                    child: const Text("Reset",
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
      ),
    );
  }
}
