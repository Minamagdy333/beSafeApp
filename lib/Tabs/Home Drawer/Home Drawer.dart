import 'dart:ffi';

import 'package:be_safe3/Sign_in/Login.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/My%20Medicalpaper.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/My%20QRcode.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/My%20Rays.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/My%20Tests.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/My%20profile.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/Related%20Account.dart';
import 'package:be_safe3/Tabs/Home%20Drawer/my%20medications.dart';
import 'package:be_safe3/signals/prefs_signal.dart';
import 'package:be_safe3/signals/user_signal.dart';
import 'package:flutter/material.dart';

typedef OnMenuItemClick = void Function(MenuItem clickedItempos);

class HomeDrawer extends StatelessWidget {
  //  OnMenuItemClick onMenuItemClick ;
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 55),
            color: const Color(0xff52B788),
            child: const Text(
              "Be Safe Settings",
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyProfile.routName);
                //onMenuItemClick(MenuItem.myProfile);
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 32,
                  ),
                  Text(
                    "My profile",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          const Divider(color: Colors.black, height: 8),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                //onMenuItemClick (MenuItem.relatedAccount);

                Navigator.pushNamed(context, RelatedAccount.routName);
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    size: 32,
                  ),
                  Text(
                    "Related Account",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          const Divider(color: Colors.black, height: 8),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                //onMenuItemClick (MenuItem.myQR);
                Navigator.pushNamed(context, MyQRCode.routName);
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.qr_code,
                    size: 32,
                  ),
                  Text(
                    "My QR",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          const Divider(color: Colors.black, height: 8),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                //onMenuItemClick! (MenuItem.myRays);
                Navigator.pushNamed(context, MyRays.routName);
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.wallpaper,
                    size: 32,
                  ),
                  Text(
                    "My Rays",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          const Divider(color: Colors.black, height: 8),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                //onMenuItemClick!(MenuItem.myTests);
                Navigator.pushNamed(context, MyTests.routName);
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.wallpaper,
                    size: 32,
                  ),
                  Text(
                    "My Tests",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          const Divider(color: Colors.black, height: 8),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                //onMenuItemClick!(MenuItem.myMedicalPaper);
                Navigator.pushNamed(context, MyMedicalPaper.routName);
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.newspaper,
                    size: 32,
                  ),
                  Text(
                    "My Medical paper",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          const Divider(color: Colors.black, height: 8),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                //onMenuItemClick!(MenuItem.myMedications);
                Navigator.pushNamed(context, MyMedications.routName);
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.medication,
                    size: 32,
                  ),
                  Text(
                    "My Medications",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          const Divider(color: Colors.black, height: 8),
          const SizedBox(height: 10),
          const Spacer(),
          TextButton.icon(
            onPressed: () async {
              await prefsSignal.value.clear();
              userModelSignal.value = null;
              if (!context.mounted) return;
              while (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
              Navigator.pushReplacementNamed(context, LoginScreen.routName);
            },
            icon: const Icon(
              Icons.logout,
              size: 32,
            ),
            label: const Text(
              "Log Out",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}

enum MenuItem {
  myProfile,
  relatedAccount,
  myQR,
  myRays,
  myTests,
  myMedicalPaper,
  myMedications,
}
