import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tastygo_app/detail_screens/profile_detail/about_screen.dart';
import 'package:tastygo_app/detail_screens/profile_detail/change_password.dart';
import 'package:tastygo_app/detail_screens/profile_detail/darkmode_screen.dart';
import 'package:tastygo_app/detail_screens/profile_detail/deleteaccount_screeen.dart';
import 'package:tastygo_app/detail_screens/profile_detail/privacypolicy_screen.dart';
import 'package:tastygo_app/detail_screens/profile_detail/support_screen.dart';
import 'package:tastygo_app/icons_classes/notification/notification_class.dart';
class Settings_Screen extends StatefulWidget {
  const Settings_Screen({super.key});

  @override
  State<Settings_Screen> createState() => _Settings_ScreenState();
}

class _Settings_ScreenState extends State<Settings_Screen> {
  final List<ListItem> items = [
    ListItem(icon: Icons.notification_add_outlined, title: 'Notification'),
    ListItem(icon: Icons.privacy_tip_outlined, title: 'Privacy Policy'),
    ListItem(icon: Icons.lock_outline, title: 'Change Password'),
    ListItem(icon: Icons.dark_mode_outlined, title: 'Dark Mode'),
    ListItem(icon: Icons.delete_outline, title: 'Delete Account'),
    ListItem(icon: Icons.question_mark_outlined, title: 'Support'),
    ListItem(icon: Icons.info_outlined, title: 'About'),

  ];

  final List<Function> function = [
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Notification_Class())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const PrivacyPolicy_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Change_Passorwd())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const DarkThemeScreen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const DeleteAccount_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Support_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const About_Screen())),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.green)),
        title: Text("Settings",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          Container(
            height: 520,
            width: double.infinity,
            child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            tileColor: const Color(0xfffE5E5E5),
                            splashColor: Colors.green,
                            onTap: () => function[index](context),
                            leading: Icon(items[index].icon,color: Colors.green,),
                            title: Text(items[index].title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            trailing: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,),
                          ),
                        );
                      },),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: const WidgetStatePropertyAll(Colors.green),
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
