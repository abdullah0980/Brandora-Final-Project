import 'package:flutter/material.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/Burger_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/Chicken.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/colddrinks_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/noodels_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/pizza-screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/rapidgrill_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/salaad_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/seeallsecondscreen_detail/DashDog_Screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/seeallsecondscreen_detail/Pasta_Screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/seeallsecondscreen_detail/SizzleShack_Screeen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/seeallsecondscreen_detail/bbq_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/seeallsecondscreen_detail/chickenbiryani_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/seeallsecondscreen_detail/fries_Screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/seeallsecondscreen_detail/snapsnacks_screen.dart';
class SeeAllSecond_Screen extends StatefulWidget {
  const SeeAllSecond_Screen({super.key});

  @override
  State<SeeAllSecond_Screen> createState() => _SeeAllSecond_ScreenState();
}

class _SeeAllSecond_ScreenState extends State<SeeAllSecond_Screen> {
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
  final List<String> categories = [
    'assets/images/nachos 1.png',
    'assets/images/noodles 1.png',
    'assets/images/noodles 1.png',
    'assets/images/fries 1.png',
    'assets/images/pasta 1.png',
    'assets/images/grilled-food 1.png',
    'assets/images/biryani 1.png',

  ];
  final List<String> text = [
    'SnapSnacks',
    'SizzleShack',
    'Desert',
    'Fries',
    'Pasta',
    'BBQ',
    'Chicken Biryani'
  ];
  final List<Function> function = [
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Burger_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Salaad_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Pizza_ScreenTwo())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Noodles_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Chicken_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const ColdDrink_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Chicken_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const RapidGrill_Screen())),
  ];

  final List<Function> images = [
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const SnapSnacks_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const SizzleShack_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const DashDog_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Fries_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const PastaOne_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const BBQ_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const ChickanBiryani_Screen())),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(onPressed: (){
              Navigator.of(context).pop();
            },
                icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
            title: Text("Categories",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),),
            centerTitle: true,
            backgroundColor: Colors.white,
            actions: [
              IconButton(onPressed: (){},
                  icon: Icon(Icons.doorbell_outlined,color: Colors.green,))
            ],
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search here",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.insert_link_rounded,color: Colors.grey,),
                      fillColor: Color(0xfffE5E5E5),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 210),
                  child: Text("Top Categories",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 320,
                    width: double.maxFinite,
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                        itemCount: 8,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            splashColor: Colors.green,
                            onTap: ()=> function[index](context),
                            child: Container(
                              height: 30,
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
                          );
                        },
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 200),
                  child: Text("More Categories",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                    ),),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 175,
                    width: double.infinity,
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 7,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            splashColor: Colors.green,
                            onTap: () => images[index](context),
                            child: Container(
                              height: 30,
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
                                          image: AssetImage(categories [index]),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(text [index])),
                                ],
                              ),
                            ),
                          );
                        },
                    ),
                  ),
                ),
              ],
            ),
          )
    ));
  }
}
