import 'package:flutter/material.dart';
class Featured_SeeAll extends StatefulWidget {
  const Featured_SeeAll({super.key});

  @override
  State<Featured_SeeAll> createState() => _Featured_SeeAllState();
}

class _Featured_SeeAllState extends State<Featured_SeeAll> {
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
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Searach here",
                      suffixIcon: Icon(Icons.search),
                      prefixIcon: Icon(Icons.insert_link_rounded,color: Colors.grey,),
                      fillColor: Color(0xfffE5E5E5),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
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
                          onTap: (){},
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
                                  child: Text(names [index].toString(),
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),),
                                ),
                                Positioned(
                                  height: 20,
                                  bottom: 16,
                                  left: 5,
                                  child:   Text(price [index].toString(),
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),),),
                              ],
                            ),
                          ),
                        );
                      },),
                  ),
                ),

              ],
            ),
          )

    );
  }
}
