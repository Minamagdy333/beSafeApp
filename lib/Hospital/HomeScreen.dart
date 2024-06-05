import 'package:be_safe3/Hospital/My%20profile%20Hospital.dart';

import 'package:flutter/material.dart';

import '../Tabs/Qr code/Scan Qr code.dart';

class HospitalHomePage extends StatelessWidget {
  const HospitalHomePage({super.key});
  static const String routeName = "Hospital Homepage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
        ),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: const Color(0xff087E8B),
              ),
              child: Column(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(1),
                      child: Icon(
                        Icons.person,
                        size: 150,
                        color: Colors.white,
                    ),
                  ),
                  const Text(
                    "My profile",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      //    QrCodeFunction.scan();
                      Navigator.pushNamed(context, MyProfileHospital.routName);
                    },
                    color: const Color(0XFF0b4b62),
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: const Text(
                      "Next",
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
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: const Color(0xff087E8B),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: Image.asset("assets/images/Qr code.png"),
                  ),
                  const Text(
                    "Scan Qr Code",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Use your smartphone camera to scan the QR code for event details",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      //    QrCodeFunction.scan();
                      Navigator.pushNamed(context, ScanQrCode.routeName);
                    },
                    color: const Color(0XFF0b4b62),
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: const Text(
                      "Scan Qr code",
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
