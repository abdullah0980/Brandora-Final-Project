import 'package:flutter/material.dart';
import 'package:tastygo_app/icons_classes/cart/cart_classone.dart';
class BBQ_Screen extends StatefulWidget {
  const BBQ_Screen({super.key});

  @override
  State<BBQ_Screen> createState() => _BBQ_ScreenState();
}

class _BBQ_ScreenState extends State<BBQ_Screen> {
  final List<String> text =  [
    '120 kcal',
    '4.7/5.0',
    '34 minutes',

  ];
  final List<Icon> icons = [
    const  Icon(Icons.local_fire_department_rounded),
    const  Icon(Icons.star_outline),
    const  Icon(Icons.watch_later_outlined),
  ];
  int _counter = 0;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    setState(() {
      _counter--;
    });

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 340,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/cooked-meat-veggies-kebab-black-table.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(


                        ),
                        onPressed: _decrementCounter,
                        child: Text('_',style: TextStyle(color: Colors.black),),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                          '$_counter',
                          style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    ),

                    SizedBox(
                      height: 50,
                      width: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Colors.green)
                        ),
                        onPressed: _incrementCounter,
                        child: Text('+',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 290),
                  child: Text("BBQ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 5,),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Icon(icons[index].icon,color: Colors.orange,),
                              ),
                              Expanded(
                                  child: Text(text[index].toString())),
                            ],
                          ),
                        ),
                      );
                    },),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 280),
                  child: Text("Details",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    "Lorem ipsum at curabitur auctor tortor nec at tortor. Magna bibendum viverra hendrerit fitery.",
                    style: TextStyle(color: Colors.grey),),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 300),
                  child: Text('Price'),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 120),
                      child: Text('\$ 25.00',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Colors.green),
                          ),
                          onPressed: (){
                            ScaffoldMessenger.of(context).showSnackBar(
                              const   SnackBar(
                                duration: Duration(seconds: 1),
                                elevation: 20,
                                behavior: SnackBarBehavior.floating,
                                content: Text("Your Order is Added into cart",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,color: Colors.white),),
                                backgroundColor: Colors.green,
                              ),
                            );
                          },
                          child:  Row(
                            children: [
                              Icon(Icons.trolley,color: Colors.white,),
                              Text("Add To Cart",
                                style: TextStyle(color: Colors.white),),
                            ],
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),




        ));
  }
}
