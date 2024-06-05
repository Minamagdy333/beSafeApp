import 'dart:developer';

import 'package:be_safe3/Apis/exceptions.dart';
import 'package:be_safe3/Sign_in/otp%20screen.dart';
import 'package:be_safe3/signals/api_signals.dart';
import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';

import 'FormField.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  static const String routName = 'Forget Password';
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController email = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Forget Password")),
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
                  icon: Icons.email_sharp,
                  hintText: "",
                  label: "Enter Your mail address",
                  keyboardType: TextInputType.emailAddress,
                  validator: qValidator([
                    IsRequired("Your email is required"),
                    const IsEmail("Invalid email address"),
                  ]),
                  controller: email,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  checkAccount();
                  // Navigator.pushNamed(context, OtpScreen.routName);
                  // setState(() {});
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

  Future<void> checkAccount() async {
    if (formKey.currentState?.validate() == true) {
      final repo = repoSignal.value;
      try {
        await repo.sendResetPasswordOTP(email.text);

        if (!mounted) return;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OtpScreen(
              email: email.text,
              isForgetPassword: true,
            ),
          ),
        );
      } on ApiException catch (e) {
        if (e.code == 409 && e.message.contains('unconfirmed')) {
          return _handleNotVerified();
        }
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.message)),
        );
      }
    }
  }

  Future<void> _handleNotVerified() async {
    log('Not verified');
    final repo = repoSignal.value;
    try {
      await repo.sendEmailVerification(email.text);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content:
              Text('Your account is not verified, we sent you a new email\n'
                  'Please verify your email and try again'),
        ),
      );
      // push to otp screen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OtpScreen(email: email.text),
        ),
      );
    } on ApiException catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message)),
      );
    }
  }
}
