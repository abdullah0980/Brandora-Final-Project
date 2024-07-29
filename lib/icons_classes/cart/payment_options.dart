import 'package:flutter/material.dart';
import 'package:tastygo_app/icons_classes/cart/card_details.dart';
class Payment_Options extends StatefulWidget {

  const Payment_Options({super.key});

  @override
  State<Payment_Options> createState() => _Payment_OptionsState();
}

class _Payment_OptionsState extends State<Payment_Options> {
  final List<ListItem> items = [
    ListItem(icon: Icons.credit_card_outlined, title: 'Credit Card/Debit Card'),
    ListItem(icon: Icons.paypal_outlined, title: 'Paypal'),
    ListItem(icon: Icons.apple_outlined, title: 'Apple Pay'),
    ListItem(icon: Icons.g_translate_outlined, title: 'Google Pay'),
  ];
  List<Color> _iconColors = List<Color>.generate(10, (index) => Colors.grey);

  void _changeIconColor(int index) {
    setState(() {
      _iconColors[index] = _iconColors[index] == Colors.grey ? Colors.green : Colors.grey;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              },
                  icon: const Icon(Icons.arrow_back_ios)),
            ),
            title: const Text("Payment Options",
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
              Container(
                height: 400,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 25,right: 25,top: 20),
                      child: ListTile(
                        tileColor: const Color(0xfffE5E5E5),
                        splashColor: Colors.grey,
                        onTap: () => _changeIconColor(index),
                        leading: Icon(items[index].icon,color: _iconColors[index]),
                        title: Text(items[index].title,style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),),
                      ),
                    );
                  },),
              ),
      SizedBox(height: 170,),
      SizedBox(
        height: 50,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(Colors.green),
                  shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ))
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => const Card_Details()));
              },
              child: Text("Processed",
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
class ListItem{
  final IconData icon;
  final String title;

  ListItem({required this.icon, required this.title});
}
