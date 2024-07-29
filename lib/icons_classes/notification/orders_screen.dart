import 'package:flutter/material.dart';
class Order_Screen extends StatefulWidget {
  const Order_Screen({super.key});

  @override
  State<Order_Screen> createState() => _Order_ScreenState();
}

class _Order_ScreenState extends State<Order_Screen> {
  final List<String> text = [
    'Your Fried Chicken has been ordered',
    'Your roasted meat has been ordered',
  ];
   List<String> fast = [
    'assets/images/Rectangle 841.png',
    'assets/images/roasted-meat-pieces-with-herbs.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios,color: Colors.green,)),
        title: const Text("Notification",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
        const    SizedBox(height: 20,),
        const    Padding(
              padding: EdgeInsets.only(left: 20,right: 250),
              child: Text(("Today")),
            ),
        const    SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 800,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 130,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xfffE5E5E5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,right: 10),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(fast[index]),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(text[index].toString(),
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                          Text("Today| 08:18 PM"),
                        ],
                      ),
                    ),
                  );
                },),
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
