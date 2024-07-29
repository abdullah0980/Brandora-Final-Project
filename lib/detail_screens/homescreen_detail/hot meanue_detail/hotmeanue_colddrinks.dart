import 'package:flutter/material.dart';
import 'package:tastygo_app/icons_classes/cart/cart_classone.dart';
class HotMeanue_ColdDrinks extends StatefulWidget {
  const HotMeanue_ColdDrinks({super.key});

  @override
  State<HotMeanue_ColdDrinks> createState() => _HotMeanue_ColdDrinksState();
}

class _HotMeanue_ColdDrinksState extends State<HotMeanue_ColdDrinks> {
  final List<String> din = [
    '0.5',
    '1 litre',
    '1.5 litre',
    '2.5 litre',
  ];
  List<bool> days = [false, false, false, false,];
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
                  height: 310,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Rectangle 2067.png"),
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
                  padding: const EdgeInsets.only(left: 10,right: 240),
                  child: Text("Cold Drinks",
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
                  child: Text("Size",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                days[index] = !days[index];
                              });
                            },
                            child: Container(
                              height: 60,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: days[index] ? Colors.green : Color(0xfffE5E5E5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                                child: Text(din[index].toString(),
                                  style: const TextStyle(color: Colors.black),),
                              ),
                            ),
                          ),
                        );
                      },),
                  ),
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
                      child: Text('\$ 8.00',
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
                          child: const  Row(
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
