
import 'package:flutter/material.dart';

class Edit_Screen extends StatefulWidget {
  const Edit_Screen({super.key});

  @override
  State<Edit_Screen> createState() => _Edit_ScreenState();
}

class _Edit_ScreenState extends State<Edit_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
        title: Text("Edit Profile",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/Ellipse 60.png"),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Name",
                  filled: true,
                  fillColor: const Color(0xfffE5E5E5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "User Name",
                  filled: true,
                  fillColor: const Color(0xfffE5E5E5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  filled: true,
                  fillColor: const Color(0xfffE5E5E5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Date of birth",
                  filled: true,
                  fillColor: const Color(0xfffE5E5E5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
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
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            backgroundColor: Colors.white,
                            duration: const Duration(seconds: 2),
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
                                  child: const Icon(Icons.gpp_good_rounded,color: Colors.white,size: 50,),
                                ),
                                const  Center(
                                  child: Text("Success",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),),
                                ),
                                const  Center(
                                  child: Text("Your Profile is edit successfully",
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
                                        child: Text("Continue",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold
                                              ,color: Colors.white),)),
                                  ),
                                ),


                              ],
                            )),
                      );

                    },
                    child: const Text("Confirm",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white),)),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
