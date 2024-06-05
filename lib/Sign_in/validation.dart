String? userNameValidation(text) {
  if (text == null || text.trim().isEmpty) {
    return "Please Enter the UserName";
  }
  final bool nameValid =
      RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%\s-]').hasMatch(text);
  if (nameValid) {
    return "Enter upper and lower case alphabets and space only";
  }
  return null;
}

bool emailValidation(String? email) {
  if (email == null) return false;
  return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[gmail]+\.[com]+")
      .hasMatch(email);
}

String? passwordValidation(text) {
  if (text == null || text.trim().isEmpty) {
    return "please Enter the password";
  }
  RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
  if (!regex.hasMatch(text)) {
    return "Enter valid password";
  }
  return null;
}
