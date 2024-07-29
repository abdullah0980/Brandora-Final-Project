import 'package:flutter/material.dart';
class Language_Screen extends StatefulWidget {
  const Language_Screen({super.key});

  @override
  State<Language_Screen> createState() => _Language_ScreenState();
}

class _Language_ScreenState extends State<Language_Screen> {
  List<String> title = [
    "English",
    "Urdu",
  ];
  final List<String> items = List<String>.generate(20, (index) => 'Item $index');

  final List<bool> _isFavorite = List<bool>.generate(20, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title: const Text("Language",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListTile(
                    onTap: (){},
                    splashColor: Color(0xfffE5E5E5),
                    title: Text(title[index].toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold),),
                    trailing:  IconButton(
                      icon: Icon(
                        _isFavorite[index] ? Icons.circle_sharp : Icons.circle_outlined,
                        color: _isFavorite[index] ? Colors.green : Colors.green,
                      ),
                      onPressed: () {
                        setState(() {
                          _isFavorite[index] = !_isFavorite[index];
                        });
                      },
                    ),
                  ),
                );
              },),
            ),
          ),
        ],
      ),
    );
  }
}
