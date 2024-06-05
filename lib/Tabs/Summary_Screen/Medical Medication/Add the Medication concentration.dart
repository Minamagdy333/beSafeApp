import 'package:be_safe3/Tabs/Home%20Drawer/my%20medications.dart';
import 'package:flutter/material.dart';

class AddMedicationConcentration extends StatefulWidget {
  static const String routeName = "Add Medication Concentration";
  const AddMedicationConcentration({super.key});

  @override
  State<AddMedicationConcentration> createState() =>
      _AddMedicationConcentrationState();
}

class _AddMedicationConcentrationState
    extends State<AddMedicationConcentration> {
  int select3 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Medication Concentration"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("assets/images/foucs Medication.png")),
            const SizedBox(
              height: 1,
            ),
            const Center(
              child: Text(
                "Add Medication Concentration",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "   Power",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 3),
            Container(
              margin: const EdgeInsets.all(5),
              child: TextFormField(
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                    ),
                    onPressed: () {},
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
                const SizedBox(
                  width: 60,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyMedications.routName);
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
