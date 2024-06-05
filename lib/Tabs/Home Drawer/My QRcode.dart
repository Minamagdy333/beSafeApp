import 'package:barcode_widget/barcode_widget.dart';
import 'package:be_safe3/Apis/exceptions.dart';
import 'package:be_safe3/signals/api_signals.dart';
import 'package:be_safe3/signals/user_signal.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:quickalert/quickalert.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:screenshot/screenshot.dart';

class MyQRCode extends StatefulWidget {
  MyQRCode({super.key});
  static const String routName = 'My QR Code';
  final ScreenshotController screenshotController = ScreenshotController();

  @override
  State<MyQRCode> createState() => _MyQRCodeState();
}

class _MyQRCodeState extends State<MyQRCode> {
  @override
  Widget build(BuildContext context) {
    final qrcode = userModelSignal.value?.id.toString();
    final qrcode1 = userModelSignal.value?.email.toString();
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Qr Code"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: BarcodeWidget(
                data: [qrcode, qrcode1].toString(),
                barcode: Barcode.qrCode(),
                color: Colors.blue,
                height: 200,
                width: 200,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
                child: TextField(
                  enabled: false,
                  controller: TextEditingController(text: qrcode),
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    labelText: "your ID",
                    fillColor: Colors.deepOrange,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 12),
                child: TextField(
                  enabled: false,
                  controller: TextEditingController(text: qrcode1),
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    labelText: "your Email",
                    fillColor: Colors.deepOrange,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: MaterialButton(
                onPressed: () async {
                  try {
                    await Geolocator.requestPermission();
                    final currentLocation =
                        await Geolocator.getCurrentPosition();
                    final lat = currentLocation.latitude;
                    final long = currentLocation.longitude;
                    await repoSignal.value.setLocation(
                      userId: userModelSignal.value?.id ?? 0,
                      location: (lat: lat, lng: long),
                    );
                    if (!context.mounted) return;

                    QuickAlert.show(
                      context: context,
                      type: QuickAlertType.success,
                      title: 'Success',
                      text: 'Location has been saved successfully',
                      backgroundColor: Colors.black,
                      titleColor: Colors.white,
                      textColor: Colors.white,
                      onConfirmBtnTap: () => Navigator.of(context)
                        ..pop()
                        ..pop(),
                    );
                  } catch (e) {
                    if (!context.mounted) return;
                    final text = switch (e.runtimeType) {
                      ServerException => (e as ApiException).message,
                      _ => e.toString(),
                    };
                    QuickAlert.show(
                      context: context,
                      type: QuickAlertType.warning,
                      title: 'Oops...',
                      text: text,
                      backgroundColor: Colors.black,
                      titleColor: Colors.white,
                      textColor: Colors.white,
                    );
                  }
                },
                color: Colors.teal,
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: const Text(
                  "Save",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
