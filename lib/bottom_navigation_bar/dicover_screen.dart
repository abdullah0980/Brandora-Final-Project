import 'package:flutter/material.dart';
import 'package:tastygo_app/detail_screens/discover_detail/chicken_pizza.dart';
import 'package:tastygo_app/detail_screens/discover_detail/colddrinkstwo_screen.dart';
import 'package:tastygo_app/detail_screens/discover_detail/friedchickentwo_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/Burger_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/Chicken.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/chicken_burger.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/colddrinks_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/hot%20meanue_detail/fired_chicken.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/hot%20meanue_detail/green_salaad.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/hot%20meanue_detail/hotmeanue_colddrinks.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/hot%20meanue_detail/hotmeanue_noodles.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/hot%20meanue_detail/hotmeanuechicken_burger.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/hot%20meanue_detail/italian_pizza.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/noodels_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/pizza-screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/rapidgrill_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/salaad_screen.dart';
import 'package:tastygo_app/featured_seeall.dart';
import 'package:tastygo_app/seeallsecond_screen.dart';
import 'package:tastygo_app/trandingfood_seeall.dart';

import '../icons_classes/cart/cart_classone.dart';
import '../icons_classes/notification/notification_class.dart';
import '../icons_classes/table_booking/reserve_table.dart';
class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
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
  final List<String> newimages = [
    'assets/images/hamburger 1.png',
    'assets/images/salad 1.png',
    'assets/images/pizza 1.png',
    'assets/images/noodles 1.png',
    'assets/images/hamburger 1.png',
    'assets/images/milkshake 1.png',
    'assets/images/turkey-leg 1.png',
    'assets/images/grilled-food 1.png',

  ];
  final List<String>  food = [
    'Burger',
    'Salad',
    'Pizza',
    'Noodles',
    'Chicken Burger',
    'Cold Drink',
    'Chicken',
    'Rapid Grill',
  ];
  final List<String> names = [
    'Chicken Burger',
    'Fried Chicken',
    'Noodles',
    'Green Salad',
    'Cold Drinks',
    'italian Pizza',

  ];

  final List<String> price = [
    "\$ 15.00",
    "\$ 30.00",
    "\$ 6.00",
    "\$ 5.00",
    "\$ 8.00",
    "\$ 35.00",

  ];
  final List<String> images =[
    'assets/images/Rectangle 2064.png',
    'assets/images/Rectangle 2069.png',
    'assets/images/Rectangle 2065.png',
    'assets/images/Rectangle 2066.png',
    'assets/images/Rectangle 2067.png',
    'assets/images/Rectangle 2068.png',

  ];
  final List<Function> navigationFunctions;

  _DiscoverScreenState() : navigationFunctions = [
        (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => const Burger_Screen())),
        (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => const Salaad_Screen())),
        (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => const Pizza_ScreenTwo())),
        (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => const Noodles_Screen())),
        (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => const Chicken_Burger())),
        (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => const ColdDrink_Screen())),
        (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => const Chicken_Screen())),
        (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => const RapidGrill_Screen())),
  ];
  final List<Function> function = [
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const HotMeanueChicken_Burger())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const FriedChicken_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const HotMeanue_Noodles())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Green_Salaad())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const HotMeanue_ColdDrinks())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Italian_Pizza())),
  ];

  final List<Function> newfunction = [
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Chicken_Pizza())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const FriedChickenTwo_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const ColdDrinkTwo_Screen())),

  ];
  final List<String> items = List<String>.generate(20, (index) => 'Item $index');

  final List<bool> _isFavorite = List<bool>.generate(20, (index) => false);

  final List<String> rating = List<String>.generate(20, (index) => 'Item $index');

  final List<bool> _review = List<bool>.generate(20, (index) => false);
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
          appBar: AppBar(
            actions: [
              IconButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Cart_ClassOne()));
              }, icon: Icon(Icons.trolley,color: Colors.green,)),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Notification_Class()));
                }, icon: Icon(Icons.notification_add,color: Colors.green,)),
              )
            ],
            iconTheme: IconThemeData(color: Colors.green),
          ),
          drawer: Drawer(
            backgroundColor: Colors.green,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 270),
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.backspace_outlined,color: Colors.white,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 200),
                  child: Text("Hello",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white),),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 30),
                      child: Text("John Micky",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),),
                    ),
                    SizedBox(
                      height: 60,
                      width: 70,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Ellipse 60.png"),
                      ),
                    ),
                  ],
                ),
                ListTile(
                  leading:  Icon(
                    Icons.home_outlined,color: Colors.white,),
                  title: Text('Home',
                    style: TextStyle(color: Colors.white),),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.trolley,color: Colors.white,),
                  title: Text('Your Cart',
                    style: TextStyle(color: Colors.white),),
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Cart_ClassOne()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.favorite_border,color: Colors.white,),
                  title: Text('Favourite',
                    style: TextStyle(color: Colors.white),),
                  onTap: () {
                    // Update the state of the app
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.content_paste,color: Colors.white,),
                  title: Text('My Order',style: TextStyle(color: Colors.white),),
                  onTap: () {
                    // Update the state of the app
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.table_bar_outlined,color: Colors.white,),
                  title: Text('Reserve Table',style: TextStyle(color: Colors.white),),
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => ReserveTable_One()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.fire_truck_outlined,color: Colors.white,),
                  title: Text('Track Order',style: TextStyle(color: Colors.white),),
                  onTap: () {
                    // Update the state of the app
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.notification_add_outlined,color: Colors.white,),
                  title: Text('Notifications',style: TextStyle(color: Colors.white),),
                  onTap: () {
                    // Update the state of the app
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings,color: Colors.white,),
                  title: const Text('Settings',style: TextStyle(color: Colors.white),),
                  onTap: () {
                    // Update the state of the app
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.privacy_tip_outlined,color: Colors.white,),
                  title: const Text('Privacy Policy',style: TextStyle(color: Colors.white),),
                  onTap: () {
                    // Update the state of the app
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const
                  Icon(Icons.subdirectory_arrow_left_rounded,color: Colors.white,),
                  title: const
                  Text('Sign Out',style: TextStyle(color: Colors.white),),
                  onTap: () {
                    // Update the state of the app
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
              child: Column(
                children: [
               const   Padding(
                    padding:  EdgeInsets.only(left: 25,right: 240),
                    child: Text("Discover",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold),),
                  ),
                const  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 22,right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.search),
                        hintText: "Search here",
                        filled: true,
                        fillColor: Color(0xfffE5E5E5),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                     const Padding(
                        padding:  EdgeInsets.only(left: 22,right: 145),
                        child: Text("Featured Items",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold),),
                      ),
                      TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const Featured_SeeAll()));
                      },
                          child: const Text("Seeall",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,color: Colors.green),)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () => function[index](context),
                              splashColor: Colors.orange,
                              child: Container(
                                height: 200,
                                width: 150,
                                decoration: const BoxDecoration(
                                  color:  Color(0xfffE5E5E5),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage(images [index]),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      height: 55,
                                      bottom: 16,
                                      left: 5,
                                      child: Row(
                                        children: [
                                          Text(names[index].toString(),
                                            style: const TextStyle(fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          IconButton(
                                            icon: Icon(
                                                _isFavorite[index] ? Icons.favorite : Icons.favorite_border,
                                                color: _isFavorite[index] ? Colors.red : Colors.grey,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  _isFavorite[index] = !_isFavorite[index];
                                                });
                                              },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      height: 20,
                                      bottom: 16,
                                      left: 5,
                                      child:   Row(
                                        children: [
                                          Text(price [index].toString(),
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 20),
                                            child: IconButton(
                                              icon: Icon(
                                                _review[index] ? Icons.star : Icons.star_outline,
                                                color: _review[index] ? Colors.yellow : Colors.grey,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  _review[index] = !_review[index];
                                                  _incrementCounter();
                                                });
                                              },

                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top:5),
                                            child: Text('$_counter'),
                                          )
                                        ],
                                      ),),
                                  ],
                                ),
                                ),
                            ),
                          );
                        },),
                    ),
                  ),
                  Row(
                    children: [
                    const  Padding(
                        padding: EdgeInsets.only(left: 22,right: 130),
                        child: Text("Top Categories",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold),),
                      ),
                      TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const SeeAllSecond_Screen()));
                      },
                          child: const Text("Seeall",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),)),
                    ],
                  ),
                const  SizedBox(height: 5,),
                  Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: 8,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () => navigationFunctions[index](context),
                              splashColor: Colors.grey,
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 2),
                                      child: Container(
                                        height: 50,
                                        width: 40,
                                        decoration:  BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(newimages [index]),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        child: Text(food [index])),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },)
                  ),
                  Row(
                    children: [
                   const   Padding(
                        padding: EdgeInsets.only(left: 22,right: 130),
                        child: Text("Trending Foods",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold),),
                      ),
                      TextButton(onPressed: (){
                        Navigator.push(
                            context,MaterialPageRoute(
                            builder: (context) => const TrandingFood_SeeAll()));
                      },
                          child: const Text("Seeall",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25),
                    child: Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(5),
                              splashColor: Colors.green,
                              onTap: () => newfunction[index](context),
                              child: Container(
                                height: 100,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: const Color(0xfffE5E5E5),
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
                                             padding: const EdgeInsets.only(left: 3,right: 50),
                                             child: Row(
                                               children: [
                                                 Text(text [index].toString(),
                                                  style: const TextStyle(
                                                      fontSize: 17,
                                                      fontWeight: FontWeight.bold),),
                                               ],
                                             ),
                                           ),
                                          Row(
                                            children: [
                                           const   Padding(
                                                padding: const EdgeInsets.only(left: 20,),
                                                child:  Text("fast food",
                                                   style: TextStyle(color: Colors.grey),),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 85),
                                                child: Text(tags [index].toString(),
                                                  style: const TextStyle(
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
                ],
              ),
    ),
    ),

    );
  }
}
