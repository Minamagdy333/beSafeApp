import 'package:be_safe3/Apis/exceptions.dart';
import 'package:be_safe3/Sign_in/FormField.dart';
import 'package:be_safe3/Sign_in/Login.dart';
import 'package:be_safe3/signals/api_signals.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:queen_validators/queen_validators.dart';
import 'package:quickalert/quickalert.dart';

class OtpScreen extends StatefulWidget {
  final String email;
  final bool isForgetPassword;
  const OtpScreen({
    super.key,
    required this.email,
    this.isForgetPassword = false,
  });
  static const String routName = 'OtpScreen';
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final repo = repoSignal.value;
  final pinController = TextEditingController();
  final passController = TextEditingController();
  final defaultPinputTheme = PinTheme(
    width: 56,
    height: 60,
    textStyle: const TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
    decoration: BoxDecoration(
      color: Colors.green.shade100,
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      border: Border.all(color: Colors.transparent),
    ),
  );
  final _formKey = GlobalKey<FormState>();

  Future<void> _handleCTA() async {
    if (widget.isForgetPassword) {
      if (_formKey.currentState?.validate() == false) return;
      try {
        await repo.resetPassword(
          widget.email,
          passController.text,
          pinController.text,
        );
        if (!mounted) return;
        Navigator.of(context).pushNamedAndRemoveUntil(
            LoginScreen.routName, (Route<dynamic> route) => false,);
        return;
      } on ApiException catch (e) {
        QuickAlert.show(
          context: context,
          type: QuickAlertType.warning,
          title: 'Oops...',
          text: e.message,
          backgroundColor: Colors.black,
          titleColor: Colors.white,
          textColor: Colors.white,
        );
        return;
      }
    }
    try {
      await repo.verifyEmail(widget.email, pinController.text);
      if (!mounted) return;
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const LoginScreen()),
        (Route<dynamic> route) => false,
      );
    } on ApiException catch (e) {
      QuickAlert.show(
        context: context,
        type: QuickAlertType.warning,
        title: 'Oops...',
        text: e.message,
        backgroundColor: Colors.black,
        titleColor: Colors.white,
        textColor: Colors.white,
      );
    }
  }

  Future<void> _handleResendCode() async {
    if (widget.isForgetPassword) {
      await repo.sendResetPasswordOTP(widget.email);
    } else {
      await repo.sendEmailVerification(widget.email);
    }
    if (!mounted) return;
    QuickAlert.show(
      context: context,
      type: QuickAlertType.success,
      title: 'success',
      text: "code sent succseful",
      backgroundColor: Colors.black,
      titleColor: Colors.white,
      textColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('OTP screen'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Verification code",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                    Text(
                      "We have sent the code verification to your gmail",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Pinput(
                validator: qValidator([
                  IsRequired("Please enter the verification code"),
                ]),
                controller: pinController,
                length: 4,
                defaultPinTheme: defaultPinputTheme,
                focusedPinTheme: defaultPinputTheme.copyWith(
                  decoration: defaultPinputTheme.decoration!.copyWith(
                    border: Border.all(color: Colors.green),
                  ),
                ),
                onCompleted: widget.isForgetPassword
                    ? null
                    : (pin) =>
                        repo.verifyEmail(widget.email, pinController.text),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.green),
                onPressed: _handleResendCode,
                child: const Text('Resend code'),
              ),
              const SizedBox(height: 30),
              if (widget.isForgetPassword)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: PersonTextFormField(
                    isHide: true,
                    icon: Icons.lock,
                    hintText: "",
                    label: "Enter Your Password",
                    keyboardType: TextInputType.visiblePassword,
                    validator: qValidator([
                      IsRequired("Please enter your password"),
                      MinLength(6, "Password should be more than 6 charcters"),
                      MaxLength(
                          50, "Password should be less than 50 charcters",),
                      RegExpRule(
                          RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',),
                          "Password should contain uppercase letter, \n lowercase letter,  numbers and  special charcter",),
                    ]),
                    controller: passController,
                  ),
                ),
              const SizedBox(height: 30),
              FilledButton(
                style: FilledButton.styleFrom(backgroundColor: Colors.green),
                onPressed: _handleCTA,
                child: const Text('Confirm'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
