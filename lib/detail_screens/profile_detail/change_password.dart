import 'package:flutter/material.dart';
class Change_Passorwd extends StatefulWidget {
  const Change_Passorwd({super.key});

  @override
  State<Change_Passorwd> createState() => _Change_PassorwdState();
}

class _Change_PassorwdState extends State<Change_Passorwd> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _Passwordcontroller = TextEditingController();
  bool _Visible = true;
  void _obsecureText(){
    setState(() {
      _Visible = _Visible;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title: Text("Change password",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              controller: _Passwordcontroller,
              decoration: InputDecoration(
                hintText: "Email",
                fillColor: Color(0xfffE5E5E5),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              onTap: _obsecureText,
              controller: _emailcontroller,
              obscureText: _Visible,
              decoration: InputDecoration(
                hintText: "Password",
                fillColor: const Color(0xfffE5E5E5),
                filled: true,
                suffixIcon: IconButton(
                    icon: Icon(
                      _Visible ? Icons.visibility_off_outlined: Icons.visibility_outlined,
                    ),
                  onPressed: (){
                      setState(() {
                        _Visible = !_Visible;
                      });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 200,),
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
                   ScaffoldMessenger.of(context).showSnackBar(
                   const  SnackBar(
                       showCloseIcon: true,
                       backgroundColor: Colors.grey,
                         duration: Duration(seconds: 3),
                         elevation: 20,
                         behavior: SnackBarBehavior.floating,
                         content: Column(
                           children: [
                             Text("Congratulations",
                               style: TextStyle(
                                 fontSize: 18,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.black),),
                             Text("your password is successfully changed",
                               style: TextStyle(
                                   fontSize: 15,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.black),),
                           ],
                         )),
                   );
                  },
                  child: const Text("Change",
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
