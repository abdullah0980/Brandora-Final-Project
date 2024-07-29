import 'package:flutter/material.dart';
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
import 'package:tastygo_app/seeallsecond_screen.dart';
class SeeAllThird_Screen extends StatefulWidget {
  const SeeAllThird_Screen({super.key});

  @override
  State<SeeAllThird_Screen> createState() => _SeeAllThird_ScreenState();
}

class _SeeAllThird_ScreenState extends State<SeeAllThird_Screen> {
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

  _SeeAllThird_ScreenState() : navigationFunctions = [
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

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.of(context).pop();
          },
              icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
          title: Text("Our Meanue",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
            ),),
          centerTitle: true,
        ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      hintText: "Search here",
                      fillColor: Color(0xfffE5E5E5),
                      filled: true,
                      prefixIcon: Icon(Icons.insert_link_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
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
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                      itemCount: 6,
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
                                  height: 45,
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

    ));
  }
}
