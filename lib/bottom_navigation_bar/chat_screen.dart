import 'package:flutter/material.dart';
import 'package:tastygo_app/tabbar/tabbarscreen_one.dart';
import 'package:tastygo_app/tabbar/tabbarscreen_two.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(170),
              child: AppBar(
                leading: IconButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
                title: const Text("Inbox",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold),),
                centerTitle: true,
                flexibleSpace: Column(
                  children: [
                  const  SizedBox(height: 95,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search here",
                          prefixIcon: const Icon(Icons.search,color: Colors.grey,),
                          suffixIcon: const Icon(Icons.power_input_outlined,color: Colors.grey,),
                          fillColor: const Color(0xfffE5E5E5),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                bottom: const TabBar(
                  labelStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                    labelColor: Colors.green,
                    indicatorColor: Colors.green,
                    dividerHeight: 3,
                    tabs: [
                      Tab(text: "Chat"),
                      Tab(text: "Calls"),
                    ],
                ),
              ),
            ),
            body: const TabBarView(
                children: [
                  TabbarScreen_One(),
                  TabbarScreen_Two(),

            ]),
      ),
    );
  }
}
