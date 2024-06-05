import 'package:be_safe3/Tabs/Qr%20code/Scan%20Qr%20code.dart';
import 'package:flutter/material.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Qr Code"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
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
