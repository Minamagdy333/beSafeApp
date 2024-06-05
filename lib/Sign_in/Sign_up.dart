import 'package:be_safe3/Apis/exceptions.dart';
import 'package:be_safe3/Sign_in/Login.dart';
import 'package:be_safe3/Sign_in/otp%20screen.dart';
import 'package:be_safe3/signals/api_signals.dart';
import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';
import 'package:quickalert/quickalert.dart';

import 'FormField.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  static const String routName = 'SignUp';

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  TextEditingController nameTxtController = TextEditingController();
  TextEditingController phoneTxtController = TextEditingController();
  TextEditingController emailTxtController = TextEditingController();
  TextEditingController passwordTxtController = TextEditingController();
  TextEditingController addressTxtController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  width: 10,
                  height: 80,
                ),
                const Text(
                  "Welcome back!",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Enter to get unlimited access to data & information",
                  style: TextStyle(color: Colors.blueGrey),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  child: const Row(
                    children: [
                      Text(
                        "Name ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "*",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                PersonTextFormField(
                  icon: Icons.person,
                  hintText: "",
                  label: "Enter Your name ",
                  keyboardType: TextInputType.name,
                  validator: qValidator([
                    IsRequired("Please enter your name"),
                    MinLength(3, "Name should be more than 3 charcters"),
                    MaxLength(50, "Name should be less than 50 charcters"),
                  ]),
                  controller: nameTxtController,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  child: const Row(
                    children: [
                      Text(
                        "phone ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "*",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                PersonTextFormField(
                  icon: Icons.phone,
                  hintText: "",
                  label: "Enter Your phone",
                  keyboardType: TextInputType.phone,
                  maxLength: 11,
                  validator: qValidator([
                    IsRequired("Please enter your phone number"),
                    IsEgyptianPhone("Please enter a valid phone number"),
                  ]),
                  controller: phoneTxtController,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  child: const Row(
                    children: [
                      Text(
                        "Email ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "*",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                PersonTextFormField(
                  icon: Icons.email_sharp,
                  hintText: "",
                  label: "Enter Your mail address",
                  keyboardType: TextInputType.emailAddress,
                  validator: qValidator([
                    IsRequired("Please enter your email"),
                    const IsEmail("Please enter a valid email address"),
                  ]),
                  controller: emailTxtController,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  child: const Row(
                    children: [
                      Text(
                        "Address",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "*",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                PersonTextFormField(
                  icon: Icons.location_on,
                  hintText: "",
                  label: "Enter Your address",
                  validator: qValidator([
                    IsRequired("Please enter your address"),
                    MinLength(10, "Address should be more than 10 charcters"),
                  ]),
                  controller: addressTxtController,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  child: const Row(
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "*",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                PersonTextFormField(
                  isHide: true,
                  icon: Icons.lock,
                  hintText: "",
                  label: "Enter Your Password",
                  keyboardType: TextInputType.visiblePassword,
                  validator: qValidator([
                    IsRequired("Please enter your password"),
                    MinLength(6, "Password should be more than 6 charcters"),
                    MaxLength(50, "Password should be less than 50 charcters"),
                    RegExpRule(
                        RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',),
                        "Password should contain uppercase letter, \n lowercase letter,  numbers and  special charcter",),
                  ]),
                  controller: passwordTxtController,
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: () async {
                    if (formKey.currentState?.validate() == true) {
                      try {
                        await repoSignal.value.register(
                          email: emailTxtController.text,
                          name: nameTxtController.text,
                          phoneNumber: phoneTxtController.text,
                          password: passwordTxtController.text,
                          address: addressTxtController.text,
                        );
                        if (!context.mounted) return;
                        
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          OtpScreen.routName,
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
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.5,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 60),
                  child: Row(
                    children: [
                      const Text("Don't have an account ?"),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            LoginScreen.routName,
                          );
                        },
                        child: const Text(
                          "Login here",
                          style: TextStyle(
                            color: Color.fromRGBO(81, 56, 238, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
