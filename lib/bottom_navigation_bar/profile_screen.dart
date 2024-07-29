import 'package:flutter/material.dart';
import 'package:tastygo_app/detail_screens/profile_detail/about_screen.dart';
import 'package:tastygo_app/detail_screens/profile_detail/change_password.dart';
import 'package:tastygo_app/detail_screens/profile_detail/darkmode_screen.dart';
import 'package:tastygo_app/detail_screens/profile_detail/deleteaccount_screeen.dart';
import 'package:tastygo_app/detail_screens/profile_detail/edit_screen.dart';
import 'package:tastygo_app/detail_screens/profile_detail/language-Screen.dart';
import 'package:tastygo_app/detail_screens/profile_detail/privacypolicy_screen.dart';
import 'package:tastygo_app/detail_screens/profile_detail/settings_screen.dart';
import 'package:tastygo_app/detail_screens/profile_detail/support_screen.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<ListItem> items = [
    ListItem(icon: Icons.edit_outlined, title: 'Edit'),
    ListItem(icon: Icons.language, title: 'Language'),
    ListItem(icon: Icons.privacy_tip_outlined, title: 'Privacy Policy'),
    ListItem(icon: Icons.settings, title: 'Settings'),
    ListItem(icon: Icons.lock_outline, title: 'Change Password'),
    ListItem(icon: Icons.delete_outline, title: 'Delete Account'),
    ListItem(icon: Icons.info_outlined, title: 'About'),
    ListItem(icon: Icons.question_mark_outlined, title: 'Support'),
    ListItem(icon: Icons.dark_mode_outlined, title: 'DarkMode'),
  ];

  final List<Function> function = [
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Edit_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Language_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const PrivacyPolicy_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Settings_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Change_Passorwd())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const DeleteAccount_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const About_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const Support_Screen())),
        (BuildContext context) => Navigator.push(context,MaterialPageRoute(builder: (context) => const DarkThemeScreen())),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: AppBar(
              leading: IconButton(onPressed: (){
                Navigator.pop(context);
              },
                  icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),
              flexibleSpace: Center(
                    child: Container(
                      height: double.infinity,
                      width: 100,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Ellipse 60.png'),
                      ),
                    ),
              ),
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25,top: 20),
                    child: ListTile(
                      tileColor: const Color(0xfffE5E5E5),
                      splashColor: Colors.grey,
                      onTap: () => function[index](context),
                      leading: Icon(items[index].icon,color: Colors.green,),
                      title: Text(items[index].title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,),
                    ),
                  );
                },),
          ),

    ));
  }
}
class ListItem{
  final IconData icon;
  final String title;

  ListItem({required this.icon, required this.title});
}
