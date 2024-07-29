import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Support_Screen extends StatefulWidget {
  const Support_Screen({super.key});

  @override
  State<Support_Screen> createState() => _Support_ScreenState();
}

class _Support_ScreenState extends State<Support_Screen> {
  final List<ListItem> items = [
    ListItem(icon: Icons.call, title: 'Contact Us'),
    ListItem(icon: Icons.facebook_outlined, title: 'Facebook'),
    ListItem(icon: Icons.camera_alt_outlined, title: 'Instagram'),
    ListItem(icon: Icons.biotech_rounded, title: 'Twitter'),
    ListItem(icon: Icons.language_rounded, title: 'Website'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
        title: const Text("Help Center",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: Container(
              height: 355,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListTile(
                    onTap: (){},
                    splashColor: Colors.grey,
                    tileColor: Color(0xfffE5E5E5),
                    title: Text(items[index].title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold),),
                    leading: Icon(items[index].icon,
                      color: Colors.green,),
                  ),
                );
              },),
            ),
          ),
          SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green),
                      shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),

                          ))
                  ),
                  onPressed: (){
                    SystemNavigator.pop();
                  },
                  child: const Text("Logout",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}
class ListItem{
  final IconData icon;
  final String title;

  ListItem({required this.icon, required this.title});
}
