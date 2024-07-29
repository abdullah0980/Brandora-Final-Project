import 'package:flutter/material.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/Burger_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/Chicken.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/chicken_burger.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/colddrinks_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/drawer/filters.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/drawer/order_history/history.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/drawer/track_order/trackorder_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/hot%20meanue_detail/fired_chicken.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/hot%20meanue_detail/green_salaad.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/hot%20meanue_detail/hotmeanue_colddrinks.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/hot%20meanue_detail/hotmeanue_noodles.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/hot%20meanue_detail/hotmeanuechicken_burger.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/hot%20meanue_detail/italian_pizza.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/noodels_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/pizza-screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/pizza_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/rapidgrill_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/salaad_screen.dart';
import 'package:tastygo_app/detail_screens/profile_detail/deleteaccount_screeen.dart';

import 'package:tastygo_app/detail_screens/profile_detail/privacypolicy_screen.dart';
import 'package:tastygo_app/detail_screens/profile_detail/settings_screen.dart';
import 'package:tastygo_app/icons_classes/cart/cart_classone.dart';
import 'package:tastygo_app/icons_classes/notification/notification_class.dart';
import 'package:tastygo_app/icons_classes/table_booking/reserve_table.dart';
import 'package:tastygo_app/seeall_third_screen.dart';
import 'package:tastygo_app/seeallfirst_screen.dart';
import 'package:tastygo_app/seeallsecond_screen.dart';
class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
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

 ] ;

 final List<Function> navigationFunctions;

  _Home_ScreenState() : navigationFunctions = [
  (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => Burger_Screen())),
  (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => Salaad_Screen())),
  (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => Pizza_ScreenTwo())),
        (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => Noodles_Screen())),
        (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => Chicken_Burger())),
        (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ColdDrink_Screen())),
        (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => Chicken_Screen())),
        (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => RapidGrill_Screen())),
  ];
  final List<Function> function = [
    (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const HotMeanueChicken_Burger())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const FriedChicken_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const HotMeanue_Noodles())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Green_Salaad())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const HotMeanue_ColdDrinks())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Italian_Pizza())),
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
    return Scaffold(
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
            const    Padding(
                  padding:  EdgeInsets.only(left: 10,right: 200),
                  child: Text("Hello",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white),),
                ),
             const   Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10,right: 30),
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
                  leading: const  Icon(
                    Icons.home_outlined,color: Colors.white,),
                  title: const Text('Home',
                    style: TextStyle(color: Colors.white),),
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const Filters_Screen()));
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
                  leading: Icon(Icons.content_paste,color: Colors.white,),
                  title: Text('My Order',style: TextStyle(color: Colors.white),),
                  onTap: () {
                    // Update the state of the app
                    Navigator.push(context,MaterialPageRoute(builder: (context) => History_Screen()));
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
                    Navigator.push(context,MaterialPageRoute(builder: (context) => TrackOrder_Screen()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.notification_add_outlined,color: Colors.white,),
                  title: Text('Notifications',style: TextStyle(color: Colors.white),),
                  onTap: () {
                    // Update the state of the app
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const Notification_Class()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings,color: Colors.white,),
                  title: Text('Settings',style: TextStyle(color: Colors.white),),
                  onTap: () {
                    // Update the state of the app
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const Settings_Screen()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip_outlined,color: Colors.white,),
                  title: Text('Privacy Policy',style: TextStyle(color: Colors.white),),
                  onTap: () {
                    // Update the state of the app
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const PrivacyPolicy_Screen()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.subdirectory_arrow_left_rounded,color: Colors.white,),
                  title: Text('Sign Out',style: TextStyle(color: Colors.white),),
                  onTap: () {
                    // Update the state of the app
                    Navigator.push(context,MaterialPageRoute(builder: (context) => DeleteAccount_Screen()));
                  },
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search here",
                      filled: true,
                      fillColor:  const Color(0xfffE5E5E5),
                      suffixIcon: const Icon(Icons.insert_link_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                  const  Padding(
                      padding:  EdgeInsets.only(left: 20,right: 125),
                      child: Text("Discount Offer",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const SeeAllFirst_Screen()));
                    },
                        child: const Text("See all",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          image: AssetImage("assets/images/Screen Shot 2023-07-11 at 5.43 1.png")),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:  Stack(
                      children: [
                     const   Row(
                          children: [
                           Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10,right: 60,top: 10),
                                    child: Text("Special Discount For Customers",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                      ),),
                                  ),
                              ),
                          ],
                        ),
                        Column(
                          children: [
                          const  SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(top: 65,left: 15),
                              child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: const
                                    WidgetStatePropertyAll(Colors.white),
                                    shape: WidgetStatePropertyAll(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        )),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context) => const PizzaScreen()));
                                  },
                                  child: const Text(
                                    "Buy Now",
                                    style: TextStyle(
                                        color: Colors.green),)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            const  SizedBox(height: 10,),
                Row(
                  children: [
                   const Padding(
                      padding:  EdgeInsets.only(left: 20,right: 125),
                      child: Text("Top Categories",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) =>  const SeeAllSecond_Screen()));
                    },
                        child: const Text("See all",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),)),
                  ],
                ),
                SizedBox(height: 10,),
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
                          splashColor: Colors.green,
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
                SizedBox(height: 10,),
                Row(
                  children: [
                    const Padding(
                      padding:  EdgeInsets.only(left: 20,right: 150),
                      child: Text("Hot Meanue",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const SeeAllThird_Screen()));
                    },
                        child: const Text("See all",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),)),
                  ],
                ),
                SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.only(left: 20,right: 20),
                     child: Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                        itemCount: function.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10
                          ),
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: () => function[index](context),
                              splashColor: Colors.green,
                              child: Container(
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: const Color(0xfffE5E5E5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 90,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(images [index]),
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
                                          Text(names [index].toString(),
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),),
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

