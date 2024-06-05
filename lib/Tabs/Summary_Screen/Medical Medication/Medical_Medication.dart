import 'package:be_safe3/Apis/exceptions.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/my%20medications.dart';
import 'package:be_safe3/Tabs/Summary_Screen/Medical%20Medication/Add%20the%20Medication%20concentration.dart';
import 'package:be_safe3/signals/api_signals.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class MedicalMedication extends StatefulWidget {
  static const String routName = "Medical Medication";

  const MedicalMedication({super.key});

  @override
  State<MedicalMedication> createState() => _MedicalMedicationState();
}

class _MedicalMedicationState extends State<MedicalMedication> {
  int? select1, select2, select3;
  final shapes = [
    "Capsule",
    "Tablet",
    "Liquid",
    "Topical",
  ];
  final otherShapes = const [
    "Device",
    "Inhaler",
    "Generation",
    "Injection",
    "Mouth",
    "Rush",
    "Foam",
    "Lotion",
    "Drops",
    "Generous",
    "Adhesive",
    "Suppositories",
    "Powder",
  ];

  final powerController = TextEditingController();
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medical Medication"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              heightFactor: 1.2,
              child: Image.asset("assets/images/medication.png"),
            ),
            const SizedBox(
              height: 1,
            ),
            const Center(
              child: Text(
                "Select Type of Medication",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "   Name",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 3),
            Container(
              margin: const EdgeInsets.all(5),
              child: TextFormField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Medicine Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "  Common Shapes",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff89c2d9),
              ),
              child: DropdownButtonFormField<int>(
                hint: const Text(
                  "Select",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                value: select1,
                onChanged: (val) {
                  setState(() {
                    select1 = val!;
                  });
                },
                items: shapes.map((e) {
                  return DropdownMenuItem<int>(
                    value: shapes.indexOf(e) + 1,
                    child: Text(
                      e,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "  More Shapes",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff89c2d9),
              ),
              child: DropdownButtonFormField<int>(
                hint: const Text(
                  "Select",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                value: select2,
                onChanged: (val) {
                  setState(() {
                    select2 = val!;
                  });
                },
                items: otherShapes
                    .map(
                      (e) => DropdownMenuItem<int>(
                        value: otherShapes.indexOf(e) + 1,
                        child: Text(
                          e,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "   Power",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 3),
            Container(
              margin: const EdgeInsets.all(5),
              child: TextFormField(
                controller: powerController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Add Concentration",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "  Choose a unit",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              height: 290,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff89c2d9),
              ),
              child: Column(
                children: [
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "amalgam",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 1,
                    groupValue: select3,
                    onChanged: (val) {
                      setState(() {
                        select3 = val!;
                      });
                    },
                  ),
                  const Divider(color: Colors.black, height: 1),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "micrograms",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 2,
                    groupValue: select3,
                    onChanged: (val) {
                      setState(() {
                        select3 = val!;
                      });
                    },
                  ),
                  const Divider(color: Colors.black, height: 1),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "g",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 3,
                    groupValue: select3,
                    onChanged: (val) {
                      setState(() {
                        select3 = val!;
                      });
                    },
                  ),
                  const Divider(color: Colors.black, height: 1),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "ml",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 4,
                    groupValue: select3,
                    onChanged: (val) {
                      setState(() {
                        select3 = val!;
                      });
                    },
                  ),
                  const Divider(color: Colors.black, height: 1),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "%",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 5,
                    groupValue: select3,
                    onChanged: (val) {
                      setState(() {
                        select3 = val!;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
                onPressed: () async {
                  try {
                    final type = () {
                      if (select1 != null) {
                        return shapes[select1! - 1];
                      } else {
                        return otherShapes[select2! - 1];
                      }
                    }();

                    await repoSignal.value.setMedicication(
                      power: powerController.text,
                      name: nameController.text,
                      type: type,
                    );
                    if (!context.mounted) return;
                    QuickAlert.show(
                      context: context,
                      title: "Success",
                      text: "Medication Added Successfully",
                      type: QuickAlertType.success,
                      onConfirmBtnTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const MyMedications(),
                          ),
                        );
                      },
                    );
                  } on ApiException catch (e) {
                    if (!context.mounted) return;
                    QuickAlert.show(
                      context: context,
                      title: "Error",
                      text: e.message,
                      type: QuickAlertType.error,
                    );
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: const Text(
                    "Save",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
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
