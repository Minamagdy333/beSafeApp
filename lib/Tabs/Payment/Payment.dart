import 'package:be_safe3/Sign_in/FormField.dart';
import 'package:be_safe3/Sign_in/validation.dart';
import 'package:be_safe3/Tabs/Payment/register_payment_visa_refcode.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController price = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/payment desgin2.png",
                  fit: BoxFit.fill,
                  height: 200,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Expanded(
                      child: PersonTextFormField(
                        hintText: "",
                        label: "First name",
                        icon: Icons.person,
                        keyboardType: TextInputType.name,
                        validator: userNameValidation,
                        controller: firstName,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: PersonTextFormField(
                        hintText: "",
                        label: "Last name",
                        icon: Icons.person,
                        keyboardType: TextInputType.name,
                        validator: userNameValidation,
                        controller: lastName,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PersonTextFormField(
                  hintText: "",
                  label: "Email",
                  icon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return "please Enter the email";
                    }
                    if (!emailValidation(text)) {
                      return "bad format";
                    }
                    return null;
                  },
                  controller: email,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PersonTextFormField(
                  hintText: "",
                  label: "Phone",
                  icon: Icons.phone,
                  keyboardType: TextInputType.phone,
                  controller: phone,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "please Enter phone";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PersonTextFormField(
                  hintText: "",
                  label: "Price",
                  icon: Icons.price_change,
                  keyboardType: TextInputType.number,
                  controller: price,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "please Enter price";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  checkAccount();
                  Navigator.pushNamed(context, RegisterPayment.routName);
                  setState(() {});
                },
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color(0XFF0b4b62),
                  ),
                ),
                color: const Color(0XFF0b4b62),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
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
