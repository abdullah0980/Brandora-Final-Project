import 'package:flutter/material.dart';
class PrivacyPolicy_Screen extends StatefulWidget {
  const PrivacyPolicy_Screen({super.key});

  @override
  State<PrivacyPolicy_Screen> createState() => _PrivacyPolicy_ScreenState();
}

class _PrivacyPolicy_ScreenState extends State<PrivacyPolicy_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
        title: const Text("Privacy Policy",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 240),
              child: Text("Terms of Us",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 160),
              child: Text("Last Update on 1/12/2021"),
            ),
            SizedBox(height: 20,),
            Divider(
              height: 20,
              thickness: 2,
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 125),
              child: Text("1. Information and Content",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 10),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem."),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 150),
              child: Text("2. Location and Activity",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 10),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem."),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 180),
              child: Text("3. Link and Security",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 10),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem."),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 150),
              child: Text("4. Our Role and privacy",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 10),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem."),
            ),
            SizedBox(height: 20,),
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
                    child: Text("Accept & Continue",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                          ,color: Colors.white),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
