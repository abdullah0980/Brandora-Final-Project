import 'package:flutter/material.dart';
import 'package:tastygo_app/detail_screens/discover_detail/colddrinkstwo_screen.dart';
import 'package:tastygo_app/detail_screens/discover_detail/trandingfood_detail/Fried_Chickenten.dart';
import 'package:tastygo_app/detail_screens/discover_detail/trandingfood_detail/chicken_pizzasix.dart';
class TrandingFood_SeeAll extends StatefulWidget {
  const TrandingFood_SeeAll({super.key});

  @override
  State<TrandingFood_SeeAll> createState() => _TrandingFood_SeeAllState();
}

class _TrandingFood_SeeAllState extends State<TrandingFood_SeeAll> {
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
  final List<Function> newfunction = [
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Chicken_pizzaSix())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Fried_ChickenTen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const ColdDrinkTwo_Screen())),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(onPressed: (){
              Navigator.of(context).pop();
            },
                icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
            title: Text("Tranding Food",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: Container(
                    height: 500,
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


              ],
            ),
          ),

    ));
  }
}
