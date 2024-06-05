import 'package:be_safe3/Tabs/Payment/Reference%20code.dart';
import 'package:be_safe3/Tabs/Payment/VisaScreen.dart';
import 'package:flutter/material.dart';

class RegisterPayment extends StatelessWidget {
  static const String routName = "Register Payment";
  const RegisterPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Payment"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff087E8B),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: Image.asset("assets/images/ref code.png"),
                  ),
                  const Text(
                    "Payment with Ref code",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "You must get the code because through it you can pay ",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ReferenceCode.routeName);
                    },
                    color: const Color(0XFF0b4b62),
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: const Text(
                      "Get Code",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff087E8B),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: Image.asset("assets/images/visa.png"),
                  ),
                  const Text(
                    "Payment with Visa",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "if you are using Visa, you must start completing some data in order for payment to be made",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, VisaScreen.routName);
                    },
                    color: const Color(0XFF0b4b62),
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: const Text(
                      "Get Start",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
