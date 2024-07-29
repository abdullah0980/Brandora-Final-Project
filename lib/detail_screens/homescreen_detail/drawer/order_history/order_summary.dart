import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/drawer/order_history/cancel_order.dart';

class Order_Summary extends StatefulWidget {
  const Order_Summary({super.key});

  @override
  State<Order_Summary> createState() => _Order_SummaryState();
}

class _Order_SummaryState extends State<Order_Summary> {
  final List<String> prices = [
    "\$ 15",
    "\$ 70",
  ];
  final List<String> text = [
    "Pizza",
    "Chicken & Others",
  ];
  final List<String> images = [
    "assets/images/Rectangle 840.png",
    "assets/images/Rectangle 12.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios,color: Colors.green,)),
        title: const Text("Order History",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 300,
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
                                      style: const TextStyle(fontSize: 17,
                                          fontWeight: FontWeight.bold),),
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
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfffE5E5E5),
                 borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20,left: 20,right: 200),
                          child: Text("Subtotal"),
                        ),
                        Text("\$130",
                          style: TextStyle(
                              fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10,left: 20,right: 150),
                          child: Text("Delivery Charges"),
                        ),
                        Text("\$20",
                          style: TextStyle(
                              fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10,left: 20,right: 200),
                          child: Text("Discount"),
                        ),
                        Text("\$10",
                          style: TextStyle(
                              fontWeight: FontWeight.bold),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 20,right: 20),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20,right: 200),
                          child: Text("Total",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ),
                        Text("\$120",
                          style: TextStyle(
                            fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 250),
              child: Text("Address",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                    const    Padding(
                          padding:  EdgeInsets.only(top: 5,left: 10,right: 120),
                          child: Text("6th Road Street 2",
                            style: TextStyle(
                                fontWeight: FontWeight.bold),),
                        ),
                        TextButton(onPressed: (){},
                            child: const Text("Change",
                          style: TextStyle(
                              color: Colors.green),
                        )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 210),
                      child: Text("Rawalpindi"),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 250),
              child: Text("Payment",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                 const   Padding(
                      padding:  EdgeInsets.only(left: 10,right: 10),
                      child:  CircleAvatar(
                            backgroundImage: AssetImage("assets/images/Mastercard.png"),
                          ),
                    ),
                        const    Padding(
                          padding:  EdgeInsets.only(top: 5,left: 10,right: 100),
                          child: Text("Mastercard",
                            style: TextStyle(
                                fontWeight: FontWeight.bold),),
                        ),
                        TextButton(onPressed: (){},
                            child: const Text("Change",
                              style: TextStyle(
                                  color: Colors.green),
                            )),
                      ],
                    ),
                const    Padding(
                      padding:  EdgeInsets.only(left: 10,right: 210),
                      child: Text("42419214"),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 160,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          overlayColor: WidgetStatePropertyAll(Colors.grey),
                          backgroundColor: WidgetStatePropertyAll(Colors.white),
                          shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => const Cancel_Order()));
                        },
                        child: const Text("Cancel Order",
                          style: TextStyle(
                              color: Colors.black),)),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 160,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: const WidgetStatePropertyAll(Colors.green),
                          shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text("Continue",
                          style: TextStyle(
                              color: Colors.white),)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
