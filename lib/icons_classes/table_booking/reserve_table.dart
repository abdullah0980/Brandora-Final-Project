import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tastygo_app/icons_classes/table_booking/confirm_booking.dart';
class ReserveTable_One extends StatefulWidget {
  const ReserveTable_One({super.key});

  @override
  State<ReserveTable_One> createState() => _ReserveTable_OneState();
}

class _ReserveTable_OneState extends State<ReserveTable_One> {
  final List<String> din = [
    'SUN',
    'MON',
    'TUE',
    'WED',
    'THU',
    'FRI',
    'SAT',
  ];
  final List<String> date = [
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17'

  ];
  List<bool> isReserved = [false, false, false, false,false,false,false,false,false,false,false];
  List<bool> days = [false, false, false, false,false,false,false];
  List<bool> place = [false,false];
  List<bool> pla = [false,false,false];
  List<bool> isReserve = [false, false, false, false,false,false,false,false,false,false,false];

  final List<Icon> icons = [
    const  Icon(Icons.camera_indoor_outlined),
    const   Icon(Icons.outdoor_grill_sharp)
  ];
  final List<String> text = ["Indoor","Outdoor"];

  final List<Icon> ic = [
    const  Icon(Icons.person),
    const   Icon(Icons.people_alt_outlined),
    const  Icon(Icons.people_rounded),
  ];
  final List<String> tex = ['Single','Couple','Family'];
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
        title: Text("Reserve a table",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/Ellipse 80.png"),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 180),
            child: Text("Number of Guest",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 10,),
            child: Container(
              height: 60,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 11,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isReserved[index] = !isReserved[index];
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: isReserved[index] ? Colors.green : Color(0xfffE5E5E5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            ' ${index + 1}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
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
            padding: const EdgeInsets.only(left: 10,right: 290),
            child: Text("Date",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Container(
              height: 70,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
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
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: days[index] ? Colors.green : Color(0xfffE5E5E5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(din[index].toString(),
                                style: const TextStyle(color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(date[index].toString(),
                                style: const TextStyle(color: Colors.black),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 140),
            child: Text("Where You Want To Eat",
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
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          place[index] = !place[index];
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: place[index] ? Colors.green : Color(0xfffE5E5E5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Icon(icons[index].icon,color: Colors.white,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(text[index].toString(),
                                style: TextStyle(color: Colors.black),),
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                },),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 170),
            child: Text("Select Your Person",
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
                itemCount: tex.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          pla[index] = !pla[index];
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: pla[index] ? Colors.green : Color(0xfffE5E5E5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Icon(ic[index].icon,color: Colors.white,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(tex[index].toString(),
                                style: TextStyle(color: Colors.black),),
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                },),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 180),
            child: Text("Number of Seats",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 10,),
            child: Container(
              height: 60,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 11,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isReserve[index] = !isReserve[index];
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: isReserve[index] ? Colors.green : Color(0xfffE5E5E5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            ' ${index + 1}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
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
            padding: const EdgeInsets.only(left: 10,right: 210),
            child: Text("Starting Time",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color:  Color(0xfffE5E5E5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 200),
                    child: Text("08:30 pm"),
                  ),
                  Icon(Icons.watch_later,color: Colors.grey,),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 140,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        overlayColor: WidgetStatePropertyAll(Colors.grey),
                        backgroundColor: WidgetStatePropertyAll(Colors.white),
                        shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text("Cancel",
                        style: TextStyle(
                            color: Colors.black),)),
                ),
              ),
              SizedBox(
                height: 40,
                width: 140,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.green),
                        shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => ConfirmBooking()));
                      },
                      child: Text("Next",
                        style: TextStyle(
                            color: Colors.black),)),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
