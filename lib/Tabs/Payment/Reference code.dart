import 'package:flutter/material.dart';

class ReferenceCode extends StatelessWidget {
  static const String routeName = "Reference Code";
  const ReferenceCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reference code"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: const Text(
              "You should go to any market to pay",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          const Text(
            "This is reference code",
            style: TextStyle(fontSize: 17),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple.shade400,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: const Text(
              "2222222",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
