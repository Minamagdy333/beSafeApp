import 'package:be_safe3/Sign_in/FormField.dart';
import 'package:be_safe3/Tabs/Summary_Screen/Medical%20Information%20Id/compelet%20Information.dart';
import 'package:be_safe3/image_function.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class MedicalInformation extends StatefulWidget {
  static const String routeName = "Medical Information";
  const MedicalInformation({super.key});

  @override
  State<MedicalInformation> createState() => _MedicalInformationState();
}

class _MedicalInformationState extends State<MedicalInformation> {
  File? _file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medical Information"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          height: 530,
          width: 1100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
            color: const Color(0xffB4D4FF), //0xff89c2d9 ,BBE2EC
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: PersonTextFormField(
                  hintText: "",
                  label: "Name",
                  icon: Icons.person,
                  keyboardType: TextInputType.name,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: PersonTextFormField(
                  hintText: "",
                  label: "Birthday Date",
                  icon: Icons.date_range_outlined,
                  keyboardType: TextInputType.datetime,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: PersonTextFormField(
                  hintText: "",
                  label: "Weight",
                  icon: Icons.sports_gymnastics_outlined,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: PersonTextFormField(
                  hintText: "",
                  label: "Height",
                  icon: Icons.sports_martial_arts_outlined,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      CompleteInformation.routeName,
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Complete the information",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  dialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () async {
                    File? temp = await ImageFunction.cameraPicker();
                    if (temp != null) {
                      _file = temp;
                    }
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "Camera",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () async {
                    File? temp = await ImageFunction.galleryPicker();
                    if (temp != null) {
                      _file = temp;
                    }
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.image_outlined,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "Gallery",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
