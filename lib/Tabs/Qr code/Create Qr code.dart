/*import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class CreateQrCode extends StatefulWidget {
  static const String routeName = "Create Qr Code";
  const CreateQrCode({super.key});

  @override
  State<CreateQrCode> createState() => _CreateQrCodeState();
}

class _CreateQrCodeState extends State<CreateQrCode> {
  var qrcode='Add Data';
  var qrcode1='Add Data';
  var qrcode2='Add Data';
  var qrcode3='Add Data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Qr Code"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: BarcodeWidget(data:[qrcode,qrcode1,qrcode2,qrcode3].toString(), barcode: Barcode.qrCode(),color: Colors.blue,height: 200,width: 200,),
            ),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 12),
                child: TextField(
                  keyboardType: TextInputType.name,
                  onChanged: (val){
                    setState(() {
                      qrcode=val;
                    });
                  },
                  decoration: const InputDecoration(
                      hintText: "Enter Your the Name",
                      fillColor: Colors.deepOrange,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )
                      )
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 12),
                child: TextField(
                  keyboardType: TextInputType.name,
                  onChanged: (val1){
                    setState(() {
                      qrcode1=val1;
                    });
                  },
                  decoration: const InputDecoration(
                      hintText: "Enter Name the Person Responsible For You",
                      fillColor: Colors.deepOrange,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )
                      )
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 28,horizontal: 12),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  onChanged: (val){
                    setState(() {
                      qrcode2=val;
                    });
                  },
                  decoration: const InputDecoration(
                      hintText: "Phone of the Person Responsible For You",
                      fillColor: Colors.deepOrange,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )
                      )
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 12),
                child: TextField(

                  onChanged: (val){
                    setState(() {
                      qrcode3=val;
                    });
                  },
                  decoration: const InputDecoration(
                      hintText: "Enter the Your Address",
                      fillColor: Colors.deepOrange,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )
                      )
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
*/
