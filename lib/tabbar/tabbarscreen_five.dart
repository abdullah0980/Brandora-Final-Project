import 'package:flutter/material.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/drawer/order_history/cancel_order.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/drawer/order_history/order_summary.dart';
class TabbarScreen_Five extends StatefulWidget {
  const TabbarScreen_Five({super.key});

  @override
  State<TabbarScreen_Five> createState() => _TabbarScreen_FiveState();
}

class _TabbarScreen_FiveState extends State<TabbarScreen_Five> {
  final List<String> prices = [
    "\$ 15",
    "\$ 70",
    "\$ 45",
  ];
  final List<String> text = [
    "Pizza",
    "Chicken & Others",
    "Fries & BBQ",
  ];
  final List<String> images = [
    "assets/images/Rectangle 840.png",
    "assets/images/Rectangle 12.png",
    "assets/images/Rectangle 13.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: text.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
              child: Container(
                height: 125,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xfffE5E5E5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 90,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 30,top: 20),
                              child: Text(text[index].toString(),
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(prices[index].toString(),
                                style: TextStyle(fontSize: 17,
                                    fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            SizedBox(
                              height: 40,
                              width: 160,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(Color(0xfffE5E5E5)),
                                      shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.black),
                                            borderRadius: BorderRadius.circular(10),
                                          )),
                                    ),
                                    onPressed: (){
                                      Navigator.push(context,MaterialPageRoute(builder: (context) => const Order_Summary()));
                                    },
                                    child: const Text("Order Cancelled",
                                      style: TextStyle(
                                          color: Colors.red),)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),


                  ],
                ),
              ),
            );
          },),
      ),

    );
  }
}
