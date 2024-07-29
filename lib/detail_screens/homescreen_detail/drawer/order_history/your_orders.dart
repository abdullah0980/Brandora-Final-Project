import 'package:flutter/material.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/drawer/order_history/order_history.dart';
class Your_Order extends StatefulWidget {
  const Your_Order({super.key});

  @override
  State<Your_Order> createState() => _Your_OrderState();
}

class _Your_OrderState extends State<Your_Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
        title: Text("Your Order",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 180,),
          Center(
            child: Icon(Icons.trolley,color: Colors.grey,size: 170,),
          ),
          SizedBox(height: 5,),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 60,right: 60),
              child: Text("Hit the below button to make an order and enjoy or best food"),
            ),
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
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const Order_History()));
                  },
                  child: const Text("Create Order",
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
