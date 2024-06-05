import 'package:be_safe3/Tabs/Home%20Drawer/Home%20Drawer.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/My%20profile.dart';
import 'package:be_safe3/Tabs/Summary_Screen/Medical%20Information%20Id/Medical%20Information(id).dart';
import 'package:be_safe3/Tabs/Summary_Screen/Medical%20Medication/Medical_Medication.dart';
import 'package:be_safe3/Tabs/Summary_Screen/notifiaction%20screen.dart';
import 'package:flutter/material.dart';

import 'Medical_rays.dart';
import 'medical paper.dart';
import 'medical_tests.dart';

class SummaryScreen extends StatelessWidget {
  SummaryScreen({super.key});
  static const String routName = 'SummaryScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: const HomeDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, NotificationScreen.routName);
            },
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
        title: const Text("Summary"),
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
                    child: Image.asset(
                      "assets/images/medical information card.png",
                    ),
                  ),
                  const Text(
                    "Prepare your medical ID",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      " In the event of an emergency,\n"
                      " first responders can look at your"
                      " medical identification information for information,\n"
                      "Contribute to saving your life",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        MedicalInformation.routeName,
                      );
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff087E8B),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/pharmaceutical.png",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Preparation of medications",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "All your medications in one place.\nYou can set your schedule"
                      "Timeline,\ncheck interactions and track what you eat",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MedicalMedication.routName);
                    },
                    color: const Color(0XFF0b4b62),
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: const Text(
                      "Add medication",
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
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(
                      "assets/images/XRay.png",
                      width: 120,
                    ),
                  ),
                  const Text(
                    "Preparation your Rays",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Organize your medical rays to streamline access when needed,"
                      "ensuring efficiency and ease of retrieval",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MedicalRays.routName);
                    },
                    color: const Color(0XFF0b4b62),
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: const Text(
                      "Add Rays",
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
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(
                      "assets/images/medical test.png",
                    ),
                  ),
                  const Text(
                    "Preparation your Tests",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Organize your medical tests to streamline access when needed,"
                      "ensuring efficiency and ease of retrieval",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MedicalTests.routName);
                    },
                    color: const Color(0XFF0b4b62),
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: const Text(
                      "Add Tests",
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
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(
                      "assets/images/medical paper.png",
                    ),
                  ),
                  const Text(
                    "Preparation your Medical Papers",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Organize your medical Papers to streamline access when needed,"
                      "ensuring efficiency and ease of retrieval",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MedicalPaper.routName);
                    },
                    color: const Color(0XFF0b4b62),
                    padding: const EdgeInsets.symmetric(horizontal: 75),
                    child: const Text(
                      "Add Medical Paper",
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

  Widget selectedWidget = const MyProfile();
  void onMenuItemClick(MenuItem item) {
    print(item.name);
  }
}

enum MenuItem {
  myProfile,
  relatedAccount,
  myQR,
  myRays,
  myTests,
  myMedicalPaper,
  myMedications
}
