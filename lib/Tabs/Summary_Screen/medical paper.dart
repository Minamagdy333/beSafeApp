import 'package:be_safe3/Apis/exceptions.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/My%20Medicalpaper.dart';
import 'package:be_safe3/image_function.dart';
import 'package:be_safe3/signals/api_signals.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'dart:io';

import 'package:quickalert/widgets/quickalert_dialog.dart';

class MedicalPaper extends StatefulWidget {
  static const String routName = "Medical paper";

  const MedicalPaper({super.key});

  @override
  State<MedicalPaper> createState() => _MedicalPaperState();
}

class _MedicalPaperState extends State<MedicalPaper> {
  File? _img;
  final commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff52B788),
        title: const Text(
          "Add Medical paper",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff0077b6),
                  ),
                  child: InkWell(
                    onTap: () async {
                      File? temp = await ImageFunction.galleryPicker();
                      if (temp != null) {
                        _img = temp;
                      }
                      setState(() {});
                    },
                    child: const Icon(Icons.photo_library),
                  ),
                ),
                const SizedBox(
                  width: 35,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff0077b6),
                  ),
                  child: InkWell(
                    onTap: () async {
                      File? temp = await ImageFunction.cameraPicker();
                      if (temp != null) {
                        _img = temp;
                      }
                      setState(() {});
                    },
                    child: const Icon(Icons.photo_camera_outlined),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Gallery",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 35,
                ),
                Text(
                  "Camera",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 330,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue,
              ),
              child: Center(
                child: _img == null ? null : Image.file(_img!),
              ),

              //   child:CircleAvatar(
              //   backgroundImage: _image==null?null:FileImage(_image!),
              //   )
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Write Comment",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 380,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.edit_note_sharp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () async {
                      try {
                        if (_img == null) {
                          QuickAlert.show(
                            context: context,
                            title: "Error",
                            text: "Please select an image",
                            type: QuickAlertType.error,
                          );
                          return;
                        }
                        await repoSignal.value.uploadRecord(
                          comment: commentController.text,
                          type: "medical paper",
                          media: _img!,
                        );
                        if (!context.mounted) return;
                        QuickAlert.show(
                          context: context,
                          title: "Success",
                          text: "Record Uploaded Successfully",
                          type: QuickAlertType.success,
                        );
                      } on ApiException catch (e) {
                        QuickAlert.show(
                          context: context,
                          title: "Error",
                          text: e.message,
                          type: QuickAlertType.error,
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                    ),
                    child: const Text(
                      "Send",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyMedicalPaper.routName);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                  ),
                  child: const Text(
                    "view",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
