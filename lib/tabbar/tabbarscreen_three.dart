import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/drawer/track_order/trackorder_screen.dart';
class TabbarScreen_Three extends StatefulWidget {
  const TabbarScreen_Three({super.key});

  @override
  State<TabbarScreen_Three> createState() => _TabbarScreen_ThreeState();
}

class _TabbarScreen_ThreeState extends State<TabbarScreen_Three> {
  final List<String> prices = [
    "\$ 20",
    "\$ 60",
    "\$ 45",
    "\$ 10"
  ];

  final List<String> text = [
    "Noodles",
    "Salad",
    "Pizza & Others",
    "Cold Drinks & Pasta",
  ];
  final List<String> images = [
    "assets/images/Rectangle 900.png",
    "assets/images/Rectangle 901.png",
    "assets/images/Rectangle 902.png",
    "assets/images/Rectangle 903.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 4,
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
                                        padding: const EdgeInsets.only(left: 10,right: 25,top: 20),
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
                                        width: 110,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: ElevatedButton(
                                              style: ButtonStyle(

                                                backgroundColor: WidgetStatePropertyAll(Colors.green),
                                                shape: WidgetStatePropertyAll(
                                                    RoundedRectangleBorder(
                                                      side: BorderSide(color: Colors.black),
                                                      borderRadius: BorderRadius.circular(10),
                                                    )),
                                              ),
                                              onPressed: (){
                                                Navigator.push(context,MaterialPageRoute(builder: (context) => const TrackOrder_Screen()));
                                              },
                                              child: Text("Track Order",
                                                style: TextStyle(
                                                    color: Colors.black),)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 40,
                                        width: 100,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                overlayColor: WidgetStatePropertyAll(Colors.grey),
                                                backgroundColor: WidgetStatePropertyAll(Colors.white),
                                                shape: WidgetStatePropertyAll(
                                                    RoundedRectangleBorder(
                                                      side: BorderSide(color: Colors.white),
                                                      borderRadius: BorderRadius.circular(10),
                                                    )),
                                              ),
                                              onPressed: (){

                                              },
                                              child: Text("View Order",
                                                style: TextStyle(
                                                    color: Colors.green),)),
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
