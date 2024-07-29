import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class CallScreeen_One extends StatefulWidget {
  const CallScreeen_One({super.key});

  @override
  State<CallScreeen_One> createState() => _CallScreeen_OneState();
}

class _CallScreeen_OneState extends State<CallScreeen_One> {
 final List<Icon> icon = [
const   Icon(Icons.message_rounded),
const   Icon(Icons.play_arrow_sharp),
const   Icon(Icons.speaker_phone_outlined),
const   Icon(Icons.mic_off_outlined),
const   Icon(Icons.record_voice_over_outlined),
const   Icon(Icons.add_call),

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
        const    SizedBox(height: 100,),
        const    Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/.image.png"),
              ),
            ),
        const      SizedBox(height: 15,),
        const       Center(
              child: Text("Smith John",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold),),
            ),
        const    Center(
              child: Text("00.00"),
            ),
        const    SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 250,
                width: 250,
                child: GridView.builder(
                  itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 30,
                        crossAxisSpacing: 30,
                        crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xfffE5E5E5),
                          borderRadius: BorderRadius.circular(400),
                        ),
                        child: Icon(icon[index].icon,color: Colors.green,),
                      );
                    },),
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              height: 70,
              width: 70,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red),
                ),
                  onPressed: (){
                  Navigator.pop(context);
                  },
                  child: const Icon(Icons.call_end,color: Colors.white,)),
            ),

          ],
        ),
      ),
    );
  }
}
