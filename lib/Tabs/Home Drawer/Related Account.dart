import 'package:flutter/material.dart';

import '../../Sign_in/FormField.dart';

class RelatedAccount extends StatefulWidget {
  const RelatedAccount({super.key});
  static const String routName = 'Related Account';

  @override
  State<RelatedAccount> createState() => _RelatedAccountState();
}

class _RelatedAccountState extends State<RelatedAccount> {
  TextEditingController emailPerson = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Related Account"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: PersonTextFormField(
                  icon: Icons.email_outlined,
                  hintText: "",
                  label: "Email Person",
                  keyboardType: TextInputType.visiblePassword,
                  validator: (p0) {
                    return null;
                  },
                  controller: emailPerson,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  checkAccount();
                  setState(() {});
                },
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(81, 56, 238, 1),
                  ),
                ),
                color: const Color.fromRGBO(81, 56, 238, 1),
                minWidth: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: const Text(
                  "Send",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checkAccount() {
    if (formKey.currentState?.validate() == false) {
      return;
    }
  }
}
