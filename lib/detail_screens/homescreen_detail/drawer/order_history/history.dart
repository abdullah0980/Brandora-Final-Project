import 'package:flutter/material.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/drawer/order_history/nointernet_screen.dart';
class History_Screen extends StatefulWidget {
  const History_Screen({super.key});

  @override
  State<History_Screen> createState() => _History_ScreenState();
}

class _History_ScreenState extends State<History_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
        title: Text("History",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 180,),
          Center(
            child: Icon(Icons.note_outlined,color: Colors.grey,size: 170,),
          ),
          SizedBox(height: 5,),
          Center(
            child: Text("There is no food yet"),
          ),
          SizedBox(height: 200,),
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
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const NoInternet_Screen()));
                  },
                  child: Text("Create Order",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                        ,color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}
