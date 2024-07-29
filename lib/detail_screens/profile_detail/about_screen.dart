import 'package:flutter/material.dart';
import 'package:tastygo_app/detail_screens/about/about_account.dart';
import 'package:tastygo_app/detail_screens/about/app_updates.dart';
import 'package:tastygo_app/detail_screens/profile_detail/privacypolicy_screen.dart';
class About_Screen extends StatefulWidget {
  const About_Screen({super.key});

  @override
  State<About_Screen> createState() => _About_ScreenState();
}

class _About_ScreenState extends State<About_Screen> {
  final List<ListItem> items = [
    ListItem(icon: Icons.info_outlined, title: 'About Your account'),
    ListItem(icon: Icons.privacy_tip_outlined, title: 'Privacy Policy'),
    ListItem(icon: Icons.app_registration_rounded, title: 'App Updates'),
  ];

  final List<Function> function = [
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const About_Account())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const PrivacyPolicy_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const App_Updates())),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.green)),
        title: Text("About",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
             Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListTile(
                  splashColor: Colors.grey,
                  onTap: () => function[index](context),
                  leading: Icon(items[index].icon,color: Colors.green,),
                  title: Text(items[index].title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,),
                  ),
                  );
                },),
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

