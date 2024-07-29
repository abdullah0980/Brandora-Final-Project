import 'package:flutter/material.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/drawer/order_history/your_orders.dart';
class NoInternet_Screen extends StatefulWidget {
  const NoInternet_Screen({super.key});

  @override
  State<NoInternet_Screen> createState() => _NoInternet_ScreenState();
}

class _NoInternet_ScreenState extends State<NoInternet_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const Icon(Icons.arrow_back_ios,color: Colors.green,)),
        title: const Text("No Internet",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const   SizedBox(height: 180,),
       const   Center(
            child: Icon(Icons.signal_wifi_statusbar_connected_no_internet_4_outlined,color: Colors.grey,size: 170,),
          ),
       const   SizedBox(height: 5,),
       const   Center(
            child: Padding(
              padding: EdgeInsets.only(left: 70,right: 70),
              child: Text("make sure you are connected to internet resource"),
            ),
          ),
      const    SizedBox(height: 200,),
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
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const Your_Order()));
                  },
                  child: const Text("Try Again",
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
