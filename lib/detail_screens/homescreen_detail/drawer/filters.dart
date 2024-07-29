import 'package:flutter/material.dart';

class Filters_Screen extends StatefulWidget {
  const Filters_Screen({super.key});

  @override
  State<Filters_Screen> createState() => _Filters_ScreenState();
}

class _Filters_ScreenState extends State<Filters_Screen> {

  List<bool> pl = [false,false,false];
  List<bool> p = [false,false,false];
  List<bool> can = [false,false,false];
  List<bool> tor = [false,false,false];

  final List<String> te = ["Veg","Non Veg", "Both"];

  final List<String> t = ['Rating','Recommended','Distance'];

  final List<String> ab = ["Delivery","Self Pickup","Dine-in"];

  final List<String> ac = ["First Class","Middle Class","Any"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(onPressed: (){
            Navigator.pop(context);
          },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        title: const Text("Filters",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          TextButton(onPressed: (){},
              child: const Text("Reset",
                style: TextStyle(
                  fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),)),
        ],
      ),
      body: Column(
        children: [
        const  SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 210),
            child: Text("Type of Foods",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Container(
              height: 60,
              width: 500,
              child: ListView.builder(
                itemCount: te.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          pl[index] = !pl[index];
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: pl[index] ? Colors.green : Color(0xfffE5E5E5),
                        ),
                        child: Center(
                          child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Text(te[index].toString(),
                                  style: const TextStyle(
                                      fontWeight:FontWeight.bold,
                                      color: Colors.black),),
                              ),
                        ),
                      ),
                    ),
                  );
                },),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 260),
            child: Text("Sort By",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Container(
              height: 60,
              width: double.infinity,
              child: ListView.builder(
                itemCount: t.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          p[index] = !p[index];
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: p[index] ? Colors.green : Color(0xfffE5E5E5),
                        ),
                        child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Center(
                                child: Text(t[index].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                      color: Colors.black),),
                              ),
                            ),
                      ),
                    ),
                  );
                },),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 225),
            child: Text("Order Type",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Container(
              height: 60,
              width: double.infinity,
              child: ListView.builder(
                itemCount: ab.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          can[index] = !can[index];
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: can[index] ? Colors.green : Color(0xfffE5E5E5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(
                            child: Text(ab[index].toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),),
                          ),
                        ),
                      ),
                    ),
                  );
                },),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 225),
            child: Text("Table Type",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Container(
              height: 60,
              width: double.infinity,
              child: ListView.builder(
                itemCount: ac.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          tor[index] = !tor[index];
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: tor[index] ? Colors.green : Color(0xfffE5E5E5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(
                            child: Text(ac[index].toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),),
                          ),
                        ),
                      ),
                    ),
                  );
                },),
            ),
          ),
          SizedBox(height: 60,),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green),
                      shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: const Text("Apply Filters",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                        ,color: Colors.white),)),
            ),
          ),



        ],
      ),
    );
  }
}
