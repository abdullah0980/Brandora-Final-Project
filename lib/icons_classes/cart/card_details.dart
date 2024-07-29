import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Card_Details extends StatefulWidget {
  const Card_Details({super.key});

  @override
  State<Card_Details> createState() => _Card_DetailsState();
}

class _Card_DetailsState extends State<Card_Details> {
  TextEditingController _controller = TextEditingController();
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const Icon(Icons.arrow_back_ios,color: Colors.green,)),
      ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
            const    SizedBox(height: 20,),
            const    Padding(
                  padding:  EdgeInsets.only(left: 20,right:150),
                  child: Text("Enter  Cart Details",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),),
                ),
            const    SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: const Text("Enter Card Details"),
                      hintText: "Enter Card Details",
                      filled: true,
                      fillColor: Color(0xfffE5E5E5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: const Text("Enter Cardholder's Name"),
                      hintText: "Enter Cardholder's Name",
                      filled: true,
                      fillColor: Color(0xfffE5E5E5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: SizedBox(
                        height: 50,
                        width: 150,
                        child: TextFormField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: "Valid Till",
                            fillColor: Color(0xfffE5E5E5),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: TextFormField(
                        controller: _controller,
                        decoration: InputDecoration(
                            hintText: "CvC Number",
                            fillColor: Color(0xfffE5E5E5),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 5),
                      child: IconButton(
                          icon: Icon(
                            _isPressed ? Icons.toggle_off_outlined : Icons.toggle_on_outlined,
                            color: _isPressed ? Colors.green : Colors.grey,
                            size: 40,
                          ),
                        onPressed: () {
                          setState(() {
                            _isPressed = !_isPressed;
                          });
                        },
                      ),
                    ),
                const    Text("Save Card information")
                  ],
                ),
                SizedBox(height: 50,),
                SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 25,right: 25),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: const
                            WidgetStatePropertyAll(Colors.green),
                            shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  backgroundColor: Colors.white,
                                  elevation: 20,
                                  behavior: SnackBarBehavior.floating,
                                  content: Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(500),
                                        ),
                                        child: const Icon(Icons.credit_card,color: Colors.white,size: 50,),
                                      ),
                                      const  Center(
                                        child: Text("Card Added",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),),
                                      ),
                                      const  Center(
                                        child: Text("Your Card has been added successfully",
                                          style: TextStyle(
                                              color: Colors.black),),
                                      ),
                                    ],
                                  )),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  backgroundColor: Colors.white,
                                  elevation: 20,
                                  behavior: SnackBarBehavior.floating,
                                  content: Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(500),
                                        ),
                                        child: const Icon(Icons.gpp_good_sharp,color: Colors.white,size: 50,),
                                      ),
                                      const  Center(
                                        child: Text("Order Placed Successfully",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),),
                                      ),
                                      const  Center(
                                        child: Text("You can track the delivery in the menu section.",
                                          style: TextStyle(
                                              color: Colors.black),),
                                      ),
                                    ],
                                  )),
                            );
                          },
                          child: const Text("Confirm",
                            style: TextStyle(color: Colors.white),)),
                    )
                ),
              ],
            ),
          ),
        );
  }
}
