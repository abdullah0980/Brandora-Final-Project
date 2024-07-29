import 'package:flutter/material.dart';
class Cancel_Order extends StatefulWidget {
  const Cancel_Order({super.key});

  @override
  State<Cancel_Order> createState() => _Cancel_OrderState();
}

class _Cancel_OrderState extends State<Cancel_Order> {
  final List<String> text = [
    "Waiting For Long time",
    "Driver denied to got to destination",
    "Driver denied to come to pickup",
    "Wrong address shown",
    "Other",
  ];
  final List<String> items = List<String>.generate(20, (index) => 'Item $index');

  final List<bool> _isFavorite = List<bool>.generate(20, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(onPressed: (){
            Navigator.pop(context);
          },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        title: Text("Cancel Order",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/Ellipse 80.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
         const   SizedBox(height: 20,),
        const    Padding(
              padding: EdgeInsets.only(left: 20,right: 80),
              child: Text("Please select the reason for cancellation."),
            ),
            Container(
              height: 400,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 10),
                  child: ListTile(
                    splashColor: Colors.grey,
                    tileColor: Color(0xfffE5E5E5),
                    onTap: (){},

                    title: Text(text[index].toString()),
                    trailing:  IconButton(
                      icon: Icon(
                        _isFavorite[index] ? Icons.circle_sharp : Icons.circle_outlined,
                        color: _isFavorite[index] ? Colors.green : Colors.green,
                      ),
                      onPressed: () {
                        setState(() {
                          _isFavorite[index] = !_isFavorite[index];
                        });
                      },
                    ),
                  ),
                );
              },),
            ),
        const    SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.green),
                        shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),

                            ))
                    ),
                    onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            backgroundColor: Colors.white,
                            elevation: 20,
                            behavior: SnackBarBehavior.floating,
                            content: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(500),
                                  ),
                                  child: const Icon(Icons.emoji_people_rounded,color: Colors.white,size: 50,),
                                ),
                                const  Center(
                                  child: Text("We Are Sad about your Cancellation",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),),
                                ),
                                const  Center(
                                  child: Text("Your Order has been Cancelled",
                                    style: TextStyle(
                                        color: Colors.black),),
                                ),
                              ],
                            )),
                      );

                    },
                    child: const Text("Submit",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white),)),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
