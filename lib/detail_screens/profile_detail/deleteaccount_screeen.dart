import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tastygo_app/login_screens/login_Screen.dart';
class DeleteAccount_Screen extends StatefulWidget {
  const DeleteAccount_Screen({super.key});

  @override
  State<DeleteAccount_Screen> createState() => _DeleteAccount_ScreenState();
}

class _DeleteAccount_ScreenState extends State<DeleteAccount_Screen> {
  List<bool> days = [false, false];
  final List<String> din = [
    'Not Sure',
    'I have a Privacy concern',
  ];
  List<bool> text= [false];
  final List<String> list = [
    "This is Temporary Block, I'Wll be Back",
  ];
  List<bool> tex = [false, false];
  final List<String> write = [
    "Bug Issues",
    "Don't like the app",
  ];
  List<bool> canada = [false, false];
  final List<String> toronto = [
    "Don't like the food",
    "Other",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
        title: Text("Account Delete",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 180),
            child: Text("Reason for leaving?",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold),),
          ),
           SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Container(
              height: 70,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: days.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          days[index] = !days[index];
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: days[index] ? Colors.green : Color(0xfffE5E5E5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(din[index].toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Container(
              height: 70,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: text.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          text[index] = !text[index];
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: text[index] ? Colors.green : Color(0xfffE5E5E5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(list[index].toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Container(
              height: 70,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tex.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          tex[index] = !tex[index];
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: tex[index] ? Colors.green : Color(0xfffE5E5E5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(write[index].toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Container(
              height: 70,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tex.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          canada[index] = !canada[index];
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: canada[index] ? Colors.green : Color(0xfffE5E5E5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(toronto[index].toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },),
            ),
          ),
          SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: SizedBox(
              height: 60,
              width: double.infinity,
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
                                child: const Icon(Icons.emoji_people_rounded,color: Colors.white,size: 50,),
                              ),
                              const  Center(
                                child: Text("We Are Sad about your deletion",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),),
                              ),
                              const  Center(
                                child: Text("Your Account has been deleted",
                                  style: TextStyle(
                                      color: Colors.black),),
                              ),
                            ],
                          )),
                    );
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginScreen()));
                  },
                  child: const Text("Submit",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white),)),
            ),
          ),
        ],
      ),

    );
  }
}
