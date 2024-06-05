import 'package:be_safe3/Sign_in/validation.dart';
import 'package:flutter/material.dart';

import 'FormField.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  static const String routName = 'New Password';
  @override
  State<NewPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<NewPassword> {
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("New Password")),
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
                  icon: Icons.remove_red_eye,
                  hintText: "",
                  label: "New Password",
                  keyboardType: TextInputType.visiblePassword,
                  validator: passwordValidation,
                  controller: newPassword,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: PersonTextFormField(
                  icon: Icons.remove_red_eye,
                  hintText: "",
                  label: " Confirm Password",
                  keyboardType: TextInputType.visiblePassword,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Please enter the confirm password';
                    }
                    if (val != newPassword.text) {
                      return 'Not Match the new password';
                    }
                    return null;
                  },
                  controller: confirmPassword,
                ),
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
