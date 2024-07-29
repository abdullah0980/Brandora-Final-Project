import 'package:flutter/material.dart';
class App_Updates extends StatefulWidget {
  const App_Updates({super.key});

  @override
  State<App_Updates> createState() => _App_UpdatesState();
}

class _App_UpdatesState extends State<App_Updates> {
  List<String> text = [
    "Auto-update TastyGo App",
    "TastyGo Update Available",
  ];

  final List<String> items = List<String>.generate(20, (index) => 'Item $index');

  final List<bool> _isFavorite = List<bool>.generate(20, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.white)),
        title: Text("App Update settings",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,color: Colors.white
          ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Container(
            height: 300,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
              return ListTile(
                onTap: (){},
                splashColor: Colors.grey,
                title: Text(text[index].toString(),
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold),),
                trailing:   IconButton(
                  icon: Icon(
                    _isFavorite[index] ? Icons.toggle_on : Icons.toggle_off_outlined,
                    color: _isFavorite[index] ? Colors.green : Colors.green,
                    size: 45,
                  ),
                  onPressed: () {
                    setState(() {
                      _isFavorite[index] = !_isFavorite[index];
                    });
                  },
                ),
              );
            },),
          ),
        ],
      ),

    );
  }
}
