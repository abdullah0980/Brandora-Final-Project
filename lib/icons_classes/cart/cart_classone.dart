import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tastygo_app/icons_classes/cart/check_out.dart';

class Cart_ClassOne extends StatefulWidget {
  const Cart_ClassOne({super.key});

  @override
  State<Cart_ClassOne> createState() => _Cart_ClassOneState();
}

class _Cart_ClassOneState extends State<Cart_ClassOne> {
  final List<String> tags = [
    '\$ 30',
    '\$ 20',
    '\$ 10',
  ];
  final List<String> text = [
    'Chicken Pizza',
    'Fried Chicken',
    'Cold Drinks',
  ];
  final List<String> fast = [

    'assets/images/Rectangle 840.png',
    'assets/images/Rectangle 841.png',
    'assets/images/Rectangle 2067.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const Icon(Icons.arrow_back_ios,color: Colors.green,)),
        title: const Text("Cart",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(Icons.conveyor_belt,color: Colors.green,)),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: text.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(5),
                        splashColor: Colors.grey,
                        onTap: (){},
                        child: Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Color(0xfffE5E5E5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(fast [index]),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3,right: 47),
                                      child: Text(text [index].toString(),
                                        style: const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20,top: 5),
                                          child:  Text("fast food",
                                            style: TextStyle(color: Colors.grey),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 85),
                                          child: Text(tags [index].toString(),
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  color: Colors.greenAccent,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const    Padding(
                          padding:  EdgeInsets.only(top: 5,left: 10,right: 80),
                          child: Text("Add Coupan Code",),
                        ),
                       Padding(
                         padding: const EdgeInsets.only(top: 5),
                         child: ElevatedButton(
                           style: ButtonStyle(
                             backgroundColor: const WidgetStatePropertyAll(Colors.green),
                             shape: WidgetStatePropertyAll(
                                 RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10),
                             )),
                           ),
                             onPressed: (){},
                             child: const Text("Accept",
                               style: TextStyle(
                                   color: Colors.white),)),
                       ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfffE5E5E5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child:  Column(
                  children: [
                const    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20,left: 20,right: 200),
                          child: Text("Total items"),
                        ),
                        Text("4",
                          style: TextStyle(
                              fontWeight: FontWeight.bold),)
                      ],
                    ),
                const    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10,left: 20,right: 200),
                          child: Text("Subtotal"),
                        ),
                        Text("\$130",
                          style: TextStyle(
                              fontWeight: FontWeight.bold),)
                      ],
                    ),
                const    Row(
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
                const    Row(
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
                const    SizedBox(height: 10,),
                const    Padding(
                      padding: EdgeInsets.only(left: 20,right: 20),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                const    Row(
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
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        height: 50,
                        width: 300,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: const WidgetStatePropertyAll(Colors.green),
                            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))
                          ),
                            onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Check_Out()));
                            },
                            child: const Text("Pay Now",
                              style: TextStyle(
                                  color: Colors.white),)),
                      ),
                    ),
                  ],
            ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
