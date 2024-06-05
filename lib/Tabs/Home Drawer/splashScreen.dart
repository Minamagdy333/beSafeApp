import 'dart:async';
import 'dart:convert';
import 'package:be_safe3/Tabs/Summary_Screen/Summary_Screen.dart';
import 'package:be_safe3/models/user_model.dart';
import 'package:be_safe3/signals/user_signal.dart';
import 'package:flutter/material.dart';
import 'package:be_safe3/Sign_in/Login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  static const String routName = 'splashScreen';

  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkUser();
  }

  Future checkUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getString('userModel') == null) {
      Navigator.of(context).pushReplacementNamed(LoginScreen.routName);
    } else {
      userModelSignal.value =
          UserModel.fromJson(jsonDecode(prefs.getString('userModel')!));
      Navigator.of(context).pushReplacementNamed(SummaryScreen.routName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 20),
            Text(
              'Loading...',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
