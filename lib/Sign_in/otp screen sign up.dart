/*
import 'package:be_safe3/HomeScreen.dart';
import 'package:be_safe3/Sign_in/new%20password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpScreenSignup extends StatefulWidget {
  const OtpScreenSignup({super.key});
  static const String routName = 'Otp Screen sign up';

  @override
  State<OtpScreenSignup> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreenSignup> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: const Center(child: Text("Otp Screen")),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30,),
          Container(
            padding: const EdgeInsets.all(10),
            child:  const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Verification code",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold
                ,fontSize: 23,
              ),),
                Text("We have sent the code verification to gmail",style: TextStyle(fontWeight: FontWeight.normal
                    ,fontSize: 14),),

              ],
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 68,width: 64,
                child: TextField(
                    onChanged: (value) {
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headlineMedium,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      hintText: "0",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.deepPurple,width:2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.deepPurple,width:2)),


                    )
                ),
              ),
              SizedBox(height: 68,width: 64,
                child: TextField(
                    onChanged: (value) {
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headlineMedium,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      hintText: "0",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.deepPurple,width:2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.deepPurple,width:2)),


                    )
                ),
              ),
              SizedBox(height: 68,width: 64,
                child: TextField(
                    onChanged: (value) {
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headlineMedium,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      hintText: "0",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.deepPurple,width:2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.deepPurple,width:2)),


                    )
                ),
              ),
              SizedBox(height: 68,width: 64,
                child: TextField(
                    onChanged: (value) {
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headlineMedium,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      hintText: "0",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.deepPurple,width:2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.deepPurple,width:2)),


                    )
                ),
              ),

            ],),
          const SizedBox(height: 80,),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, HomePage.routName);
              setState(() {});
            },
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                    color: Color.fromRGBO(81, 56, 238, 1)
                )
            ),
            color: const Color.fromRGBO(81, 56, 238, 1),
            minWidth: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: const Text(
              "Confirm",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.5),
            ),
          ),
        ],
      ),
    );
  }
}
 */
