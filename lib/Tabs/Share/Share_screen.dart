import 'package:be_safe3/Tabs/Share/Share_with_Someone.dart';
import 'package:flutter/material.dart';

class ShareScreen extends StatelessWidget {
  const ShareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Share"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff087E8B),
            ),
            child: Column(
              children: [
                const Icon(
                  Icons.person_add_alt_1_rounded,
                  size: 55,
                  color: Color(0xff96EFFF),
                ),
                const Text(
                  "Share your medical Information",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.menu_outlined,
                        color: Color(0xff96EFFF),
                      ),
                    ),

                    // Padding(
                    //padding: EdgeInsets.only(bottom: 1),
                    Text(
                      '- You can Keep your friends and family informed ',
                      style: TextStyle(color: Colors.white),
                    ),
                    //),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 37, bottom: 5),
                      child: const Text(
                        "about your health"
                        " condition by sharing your",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 37, bottom: 5),
                      child: const Text(
                        "health data",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.notifications_active,
                        color: Color(0xff96EFFF),
                      ),
                    ),

                    // Padding(
                    //padding: EdgeInsets.only(bottom: 1),
                    Text(
                      '- The data you share will appear in their Health  ',
                      style: TextStyle(color: Colors.white),
                    ),
                    //),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 37, bottom: 5),
                      child: const Text(
                        "app.They can also get notifications",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.lock, color: Color(0xff96EFFF)),
                    ),

                    // Padding(
                    //padding: EdgeInsets.only(bottom: 1),
                    Text(
                      '- Only a summary of each topic is shared, details  ',
                      style: TextStyle(color: Colors.white),
                    ),
                    //),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 37, bottom: 5),
                      child: const Text(
                        "are not shared.The information is encrypted and",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 37, bottom: 5),
                      child: const Text(
                        "you can stop sharing at any time",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ShareWithSomeone.routeName);
                  },
                  color: const Color(0XFF0b4b62),
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: const Text(
                    "Share with someone",
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
    );
  }
}
