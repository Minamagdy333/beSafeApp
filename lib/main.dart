import 'package:be_safe3/Hospital/HomeScreen.dart';
import 'package:be_safe3/Hospital/My%20profile%20Hospital.dart';
import 'package:be_safe3/Sign_in/forgetpassword.dart';
import 'package:be_safe3/Sign_in/new%20password.dart';

import 'package:be_safe3/Sign_in/otp%20screen.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/My%20Medicalpaper.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/My%20QRcode.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/My%20Rays.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/My%20Tests.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/My%20profile.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/Related%20Account.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/splashScreen.dart';

import 'package:be_safe3/Tabs/Qr%20code/Scan%20Qr%20code.dart';

import 'package:be_safe3/Tabs/Share/Share_with_Someone.dart';

import 'package:be_safe3/Tabs/Summary_Screen/Medical%20Medication/Add%20the%20Medication%20concentration.dart';
import 'package:be_safe3/HomeScreen.dart';
import 'package:be_safe3/Tabs/Summary_Screen/Medical%20Information%20Id/Medical%20Information(id).dart';
import 'package:be_safe3/Tabs/Summary_Screen/Medical%20Medication/Medical_Medication.dart';
import 'package:be_safe3/Tabs/Payment/Reference%20code.dart';
import 'package:be_safe3/Sign_in/Login.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/my%20medications.dart';
import 'package:be_safe3/Tabs/Summary_Screen/Medical_rays.dart';
import 'package:be_safe3/My%20Theme%20Data.dart';
import 'package:be_safe3/Sign_in/Sign_up.dart';
import 'package:be_safe3/Tabs/Payment/VisaScreen.dart';
import 'package:be_safe3/Tabs/Summary_Screen/Medical%20Information%20Id/compelet%20Information.dart';
import 'package:be_safe3/Tabs/Summary_Screen/Summary_Screen.dart';
import 'package:be_safe3/Tabs/Summary_Screen/medical%20paper.dart';
import 'package:be_safe3/Tabs/Summary_Screen/medical_tests.dart';
import 'package:be_safe3/Tabs/Payment/register_payment_visa_refcode.dart';
import 'package:be_safe3/Tabs/Summary_Screen/notifiaction%20screen.dart';
import 'package:be_safe3/signals/prefs_signal.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Tabs/map/mapScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPref = await SharedPreferences.getInstance();
  prefsSignal.overrideWith(sharedPref);
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routName,
      routes: {
        LoginScreen.routName: (context) => const LoginScreen(),
        HomePage.routName: (context) => const HomePage(),
        SignUp.routName: (context) => const SignUp(),
        MedicalPaper.routName: (context) => const MedicalPaper(),
        MedicalTests.routName: (context) => const MedicalTests(),
        MedicalRays.routName: (context) => const MedicalRays(),
        MedicalMedication.routName: (context) => const MedicalMedication(),
        AddMedicationConcentration.routeName: (context) =>
            const AddMedicationConcentration(),
        RegisterPayment.routName: (context) => const RegisterPayment(),
        ReferenceCode.routeName: (context) => const ReferenceCode(),
        VisaScreen.routName: (context) => const VisaScreen(),
        MedicalInformation.routeName: (context) => const MedicalInformation(),
        CompleteInformation.routeName: (context) => const CompleteInformation(),
        // CreateQrCode.routeName:(context) => const CreateQrCode(),
        ScanQrCode.routeName: (context) => const ScanQrCode(),
        //   SearchScreen.routeName:(context) => const SearchScreen(),
        ShareWithSomeone.routeName: (context) => const ShareWithSomeone(),
        // InformationPerson.routeName:(context) => const InformationPerson(),
        ForgetPassword.routName: (context) => const ForgetPassword(),
        NewPassword.routName: (context) => const NewPassword(),
        OtpScreen.routName: (context) => const OtpScreen(email: '',),
        // OtpScreenSignup.routName:(context) => const OtpScreenSignup(),
        MyProfile.routName: (context) => const MyProfile(),
        RelatedAccount.routName: (context) => const RelatedAccount(),
        MyQRCode.routName: (context) => MyQRCode(),
        NotificationScreen.routName: (context) => const NotificationScreen(),
        MapScreen.routName: (context) => const MapScreen(),
        MyMedications.routName: (context) => const MyMedications(),
        MyRays.routName: (context) => const MyRays(),
        MyTests.routName: (context) => const MyTests(),
        MyMedicalPaper.routName: (context) => const MyMedicalPaper(),
        HospitalHomePage.routeName: (context) => const HospitalHomePage(),
        MyProfileHospital.routName: (context) => const MyProfileHospital(),
        SplashScreen.routName: (context) => const SplashScreen(),
        SummaryScreen.routName: (context) =>  SummaryScreen(),
      },
      theme: MyThemeData.darkTheme,
    );
  }
}
