import 'package:be_safe3/Tabs/Share/Search/Search%20Function.dart';
import 'package:flutter/material.dart';

class ShareWithSomeone extends StatefulWidget {
  static const String routeName = "Share with Someone";
  const ShareWithSomeone({super.key});

  @override
  State<ShareWithSomeone> createState() => _ShareWithSomeoneState();
}

class _ShareWithSomeoneState extends State<ShareWithSomeone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Share with Someone",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 150),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff087E8B),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset(
                      "assets/images/Search_person-removebg-preview.png",
                      height: 170,
                    ),
                  ),
                  const Text(
                    "Search Responsible Person",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "- If this person uses the be safe app,"
                      " you can search for him here",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "-Search the user via email user or id user",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    onPressed: () {
                      //Navigator.pushNamed(context, SearchScreen.routeName);
                      showSearch(context: context, delegate: SearchFunction());
                    },
                    color: const Color(0XFF0b4b62),
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: const Text(
                      "Search",
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
