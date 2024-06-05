import 'package:be_safe3/Tabs/map/mapScreen.dart';
import 'package:be_safe3/Tabs/Payment/Payment.dart';
import 'package:be_safe3/Tabs/Qr%20code/Qr_code.dart';
import 'package:be_safe3/Tabs/Share/Share_screen.dart';
import 'package:be_safe3/Tabs/Summary_Screen/Summary_Screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routName = 'Home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken_sharp),
            label: "Summary",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: "share"),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_rounded),
            label: "Qr code",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: "Map"),
          BottomNavigationBarItem(
            icon: Icon(Icons.payments_rounded),
            label: "payment",
          ),

        ],
      ),
      body: tabs[index],
    );
  }

  List<Widget> tabs = [
    SummaryScreen(),
    const ShareScreen(),
    const QrCodeScreen(),
    const MapScreen(),
    const PaymentScreen(),
  ];
}
