import 'package:flutter/material.dart';
class ConfirmBooking extends StatefulWidget {
  const ConfirmBooking({super.key});

  @override
  State<ConfirmBooking> createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
  final List<ListItem> items = [
    ListItem(icon: Icons.people_alt_outlined, title: 'No.of Guests'),
    ListItem(icon: Icons.date_range, title: 'Date'),
    ListItem(icon: Icons.watch_later, title: 'Time'),
    ListItem(icon: Icons.table_bar_outlined, title: 'Table.no'),
  ];
  final List<String> trailing = [
    '4',
    '3 June',
    '16:30',
    '08',
  ];
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
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        title: const Text("Confirm Booking",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/Ellipse 80.png"),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: 400,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListTile(
                    splashColor: Colors.green,
                    trailing: Text(trailing[index].toString(),
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold),),
                    onTap: (){},
                    tileColor: Color(0xfffE5E5E5),
                    leading: Icon(items[index].icon,color: Colors.green,),
                    title: Text(items[index].title,style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.bold),),

                  ),
                );
              },),

            ),
          ),
          SizedBox(height: 170,),
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 140,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
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
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.white,
                              duration: const Duration(seconds: 2),
                              elevation: 20,
                              behavior: SnackBarBehavior.floating,
                              content: Column(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(500),
                                    ),
                                    child: const Icon(Icons.gpp_good_rounded,color: Colors.white,size: 50,),
                                  ),
                                const  Center(
                                    child: Text("Success",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                  ),
                                const  Center(
                                    child: Text("Table has been Reserved successfully",
                                      style: TextStyle(
                                          color: Colors.black),),
                                  ),
                              const    SizedBox(height: 10,),
                                  SizedBox(
                                    height: 50,
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
                                          child: Text("Continue",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold
                                                ,color: Colors.white),)),
                                    ),
                                  ),


                                ],
                              )),
                        );

                      },
                      child: const Text("Confirm",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black),)),
                ),
              ),
            ],
          ),

      ],),

    );
  }
}
class ListItem{
  final IconData icon;
  final String title;

  ListItem({required this.icon, required this.title});
}

