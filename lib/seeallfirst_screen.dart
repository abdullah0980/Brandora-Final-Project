import 'package:flutter/material.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/seeallscreenone_detail/burgertwo-detail.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/seeallscreenone_detail/kableepolawo_screen.dart';
import 'package:tastygo_app/detail_screens/homescreen_detail/seeallscreenone_detail/pizzathree_Screen.dart';
import 'package:tastygo_app/icons_classes/cart/cart_classone.dart';
class SeeAllFirst_Screen extends StatefulWidget {
  const SeeAllFirst_Screen({super.key});

  @override
  State<SeeAllFirst_Screen> createState() => _SeeAllFirst_ScreenState();
}

class _SeeAllFirst_ScreenState extends State<SeeAllFirst_Screen> {
  final List<Color> colors = [
    Colors.yellow,
    Colors.green,
    Colors.brown,
  ];
  final List<String> images = [
    'assets/images/image 39.png',
    'assets/images/image 40.png',
    'assets/images/image 41.png',
  ];
  final List<Function> function = [
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const BurgerTwo_Detail())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const KableePolaw_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const PizzaThree_Screen())),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(onPressed: (){
              Navigator.of(context).pop();
            },
                icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
            title: Text("Discount Offer",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 560,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 10),
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: (){},
                        child: Container(
                          height: 155,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: colors[index],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5),
                            child: Column(
                              children: [
                                Row(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 130,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(images[index]),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 10),
                                            child: Text('Best Discount Offer',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),),
                                          ),
                                        ],
                                      ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: TextButton(
                                          style: ButtonStyle(
                                            backgroundColor: const
                                            WidgetStatePropertyAll(Colors.white),
                                            shape: WidgetStatePropertyAll(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                )),
                                          ),
                                          onPressed: () => function[index](context),
                                          child: const Text(
                                            "Buy Now",
                                            style: TextStyle(
                                                color: Colors.green),)),
                                    )
                                  ],
                                ),
                            ),
                          ),

                        ),
                    );
                  },),
                ),
              ],
            ),
          ),


    );
  }
}
