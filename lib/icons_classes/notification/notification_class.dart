import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tastygo_app/icons_classes/notification/rate_driver.dart';
class Notification_Class extends StatefulWidget {
  const Notification_Class({super.key});

  @override
  State<Notification_Class> createState() => _Notification_ClassState();
}

class _Notification_ClassState extends State<Notification_Class> {
  TextEditingController _controller = TextEditingController();

  final List<String> rating = List<String>.generate(20, (index) => 'Item $index');

  final List<bool> _review = List<bool>.generate(20, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios,color: Colors.green,)),
        title: const Text("Leave Feedback",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
          const  SizedBox(height: 25,),
          const
          Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/images/image 1.png"),
              ),
            ),
          const  SizedBox(height: 25,),
         const   Center(
              child: Text("Enjoy Your Meal",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold),),
            ),
         const   SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 25),
              child: Container(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return IconButton(
                      icon: Icon(
                        _review[index] ? Icons.star : Icons.star_outline,
                        color: _review[index] ? Colors.yellow : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _review[index] = !_review[index];
                        });
                      },
                    );
                  },
              ),
              ),
            ),
            const   Center(
              child: Text("Satisfaction"),
            ),
        const    SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "Your Comment here",
                  fillColor: const Color(0xfffE5E5E5),
                  filled: true,
                  suffixIcon: const Icon(Icons.edit_note_outlined,color: Colors.grey,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const WidgetStatePropertyAll(Colors.green),
                    shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const Rate_Driver()));
                  },
                  child: const Text("Next",
                    style: TextStyle(
                        color: Colors.white),)),
            ),
            ],
        ),
      ),


    );
  }
}
