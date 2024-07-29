import 'package:flutter/material.dart';
class TabbarScreen_Four extends StatefulWidget {
  const TabbarScreen_Four({super.key});

  @override
  State<TabbarScreen_Four> createState() => _TabbarScreen_FourState();
}

class _TabbarScreen_FourState extends State<TabbarScreen_Four> {
  final List<String> prices = [
    "\$ 40",
    "\$ 30",
    "\$ 23",
    "\$ 20",
  ];
  final List<String> text = [
    "Fried Chicken",
    "Cold Drinks & BBQ",
    "Pasta",
    "noodles & Others",
  ];
  final List<String> images = [
    "assets/images/Rectangle 1.png",
    "assets/images/Rectangle 2.png",
    "assets/images/Rectangle 3.png",
    "assets/images/Rectangle 4.png",
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
                            )
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
                                    },
                                    child: const Text("Reviews",
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
                                      overlayColor: const WidgetStatePropertyAll(Colors.grey),
                                      backgroundColor: const WidgetStatePropertyAll(Colors.white),
                                      shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.white),
                                            borderRadius: BorderRadius.circular(10),
                                          )),
                                    ),
                                    onPressed: (){

                                    },
                                    child: const Text("Order Again",
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
