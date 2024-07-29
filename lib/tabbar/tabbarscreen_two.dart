import 'package:flutter/material.dart';
class TabbarScreen_Two extends StatefulWidget {
  const TabbarScreen_Two({super.key});

  @override
  State<TabbarScreen_Two> createState() => _TabbarScreen_TwoState();
}

class _TabbarScreen_TwoState extends State<TabbarScreen_Two> {
  final List<String> text = [
    'Pranav Ray',
    'Milky john',
    'Mark Wood',
    'joes Butreller',
    'Deepak Chahar',
    'Rockey Ponting',
    'joe Root',
    'Roy',
  ];
  final List<String> images = [
    'assets/images/Ellipse 1.png',
    'assets/images/Ellipse 2.png',
    'assets/images/Ellipse 3.png',
    'assets/images/Ellipse 4.png',
    'assets/images/Ellipse 5.png',
    'assets/images/Ellipse 6.png',
    'assets/images/Ellipse 7.png',
    'assets/images/Ellipse 8.png',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: text.length,
          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              tileColor: Color(0xfffE5E5E5),
              splashColor: Colors.grey,
              onTap: () {},
              leading: CircleAvatar(
                backgroundImage: AssetImage(images [index]),
              ),
              title: Text(text [index].toString(),
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold),),
              trailing: IconButton(onPressed: (){},
                  icon: Icon(Icons.call,color: Colors.grey,))



            ),
          );
        },),
      ),
    );
  }
}
