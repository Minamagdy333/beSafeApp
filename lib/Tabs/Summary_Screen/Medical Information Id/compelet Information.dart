import 'package:flutter/material.dart';

class CompleteInformation extends StatefulWidget {
  static const String routeName = "Complete Information";
  const CompleteInformation({super.key});

  @override
  State<CompleteInformation> createState() => _CompleteInformationState();
}

enum Select { yes, no }

class _CompleteInformationState extends State<CompleteInformation> {
  int select1 = 0;
  int select2 = 1;
  int select3 = 2;
  int select4 = 3;
  int select5 = 4;
  int select6 = 5;
  Select? select7;
  int select8 = 9;

  bool _homeFieldVisible = false;

  void handleSelection(Select? value) {
    setState(() {
      select7 = value;
      _homeFieldVisible = value == Select.yes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Complete Information"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              height: 1670,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffB4D4FF), //0xff89c2d9 ,BBE2EC
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 50, top: 10),
                    child: Text(
                      "Is there a disease of blood pressure",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "YES",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 1,
                    groupValue: select1,
                    onChanged: (val) {
                      setState(() {
                        select1 = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "NO",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 2,
                    groupValue: select1,
                    onChanged: (val) {
                      setState(() {
                        select1 = val!;
                      });
                    },
                  ),
                  const Divider(color: Colors.black, height: 1),
                  const Padding(
                    padding: EdgeInsets.only(right: 100, top: 10),
                    child: Text(
                      "Is there a disease of diabetes",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "YES",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 0,
                    groupValue: select2,
                    onChanged: (val) {
                      setState(() {
                        select2 = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "NO",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 2,
                    groupValue: select2,
                    onChanged: (val) {
                      setState(() {
                        select2 = val!;
                      });
                    },
                  ),
                  const Divider(color: Colors.black, height: 1),
                  const Padding(
                    padding: EdgeInsets.only(right: 120, top: 10),
                    child: Text(
                      "Is there any heart disease",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "YES",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 0,
                    groupValue: select3,
                    onChanged: (val) {
                      setState(() {
                        select3 = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "NO",
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
                  const Padding(
                    padding: EdgeInsets.only(right: 120, top: 10),
                    child: Text(
                      "Is there any Kidney disease",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "YES",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 0,
                    groupValue: select4,
                    onChanged: (val) {
                      setState(() {
                        select4 = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "NO",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 1,
                    groupValue: select4,
                    onChanged: (val) {
                      setState(() {
                        select4 = val!;
                      });
                    },
                  ),
                  const Divider(color: Colors.black, height: 1),
                  const Padding(
                    padding: EdgeInsets.only(right: 140, top: 10),
                    child: Text(
                      "Is there any liver disease",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "YES",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 0,
                    groupValue: select5,
                    onChanged: (val) {
                      setState(() {
                        select5 = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "NO",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 1,
                    groupValue: select5,
                    onChanged: (val) {
                      setState(() {
                        select5 = val!;
                      });
                    },
                  ),
                  const Divider(color: Colors.black, height: 1),
                  const Padding(
                    padding: EdgeInsets.only(right: 130, top: 10),
                    child: Text(
                      "Is there any blood disease",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "YES",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 0,
                    groupValue: select6,
                    onChanged: (val) {
                      setState(() {
                        select6 = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "NO",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 1,
                    groupValue: select6,
                    onChanged: (val) {
                      setState(() {
                        select6 = val!;
                      });
                    },
                  ),
                  const Divider(color: Colors.black, height: 1),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 10,
                      top: 10,
                    ),
                    child: Text(
                      " there specific virus or there other diseases",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "YES",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: Select.yes,
                    groupValue: select7,
                    onChanged: handleSelection,
                  ),
                  if (_homeFieldVisible)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        cursorColor: Colors.black,
                        cursorRadius: const Radius.circular(16),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          hintText: 'Enter the name virus or other diseases',
                        ),
                      ),
                    ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "NO",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: Select.no,
                    groupValue: select7,
                    onChanged: (val) {
                      setState(() {
                        select7 = val!;
                      });
                    },
                  ),
                  const Divider(color: Colors.black, height: 1),
                  const Padding(
                    padding: EdgeInsets.only(right: 100, top: 10),
                    child: Text(
                      "Is there a disease of diabetes",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "A+",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 0,
                    groupValue: select8,
                    onChanged: (val) {
                      setState(() {
                        select8 = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "A-",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 1,
                    groupValue: select8,
                    onChanged: (val) {
                      setState(() {
                        select8 = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "B+",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 3,
                    groupValue: select8,
                    onChanged: (val) {
                      setState(() {
                        select8 = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "B-",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 4,
                    groupValue: select8,
                    onChanged: (val) {
                      setState(() {
                        select8 = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "O+",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 5,
                    groupValue: select8,
                    onChanged: (val) {
                      setState(() {
                        select8 = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "O-",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 6,
                    groupValue: select8,
                    onChanged: (val) {
                      setState(() {
                        select8 = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Colors.black,
                    title: const Text(
                      "AB+",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 7,
                    groupValue: select8,
                    onChanged: (val) {
                      setState(() {
                        select8 = val!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Colors.black, //2B2B2BFF,
                    title: const Text(
                      "AB-",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: 8,
                    groupValue: select8,
                    onChanged: (val) {
                      setState(() {
                        select8 = val!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: MaterialButton(
                onPressed: () {},
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
