import 'package:be_safe3/Sign_in/Sign_up.dart';
import 'package:flutter/material.dart';

typedef Validator = String? Function(String?);

class PersonTextFormField extends StatefulWidget {
  String hintText, label;
  TextEditingController? controller;
  TextInputType keyboardType;
  Validator? validator;
  IconData icon;
  int maxLength;
  // bool? isPassword;
  bool? isHide;
  PersonTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.validator,
    this.maxLength = 11,
    required this.label,
    required this.icon,
    // this.isPassword,
    this.isHide,
  });

  @override
  State<PersonTextFormField> createState() => _PersonTextFormFieldState();
}

class _PersonTextFormFieldState extends State<PersonTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        label: Text(widget.label),
        hintText: widget.hintText,
        prefixIcon: Icon(widget.icon),
        suffixIcon: widget.isHide != null
            ? IconButton(
                onPressed: () {
                 widget.isHide = !widget.isHide!;
                  setState(() {});
                },
                icon: Icon(widget.isHide! ? Icons.visibility_off : Icons.visibility),)
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      obscureText: widget.isHide??false ,
    );
  }
}
