import 'package:flutter/material.dart';
class About_Account extends StatefulWidget {
  const About_Account({super.key});

  @override
  State<About_Account> createState() => _About_AccountState();
}

class _About_AccountState extends State<About_Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.green)),
        title: Text("About your Account",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/1719588884113.jpg"),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text("Muhammad Abullah",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Center(
              child: Text("To help keep our community aunthetic, we're showing information about accounts",),
            ),
          ),

        ],
      ),

    );
  }
}
