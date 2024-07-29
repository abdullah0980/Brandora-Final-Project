import 'package:flutter/material.dart';

import '../../../../tabbar/tabbarscreen_five.dart';
import '../../../../tabbar/tabbarscreen_four.dart';
import '../../../../tabbar/tabbarscreen_three.dart';
class Order_History extends StatefulWidget {
  const Order_History({super.key});

  @override
  State<Order_History> createState() => _Order_HistoryState();
}

class _Order_HistoryState extends State<Order_History> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: AppBar(
            leading: IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios,color: Colors.green,)),
            title: const Text("Order History",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold),),
            centerTitle: true,
            bottom: const TabBar(
              labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              labelColor: Colors.green,
              indicatorColor: Colors.green,
              dividerHeight: 3,
              tabs: [
                Tab(text: "Pending"),
                Tab(text: "Completed"),
                Tab(text: "Cancelled"),
              ],
            ),
          ),
        ),
        body: const TabBarView(
            children: [
              TabbarScreen_Three(),
              TabbarScreen_Four(),
              TabbarScreen_Five(),



            ]),
      ),
    );
  }
}
