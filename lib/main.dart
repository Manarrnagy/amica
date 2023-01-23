import 'package:amica_task_one/Account.dart';
import 'package:amica_task_one/Change_password.dart';
import 'package:amica_task_one/Profile.dart';
import 'package:amica_task_one/Settings.dart';
import 'package:amica_task_one/Sign_in.dart';
import 'package:amica_task_one/Statistics.dart';
import 'package:amica_task_one/View/FloatingNavBar.dart';
import 'package:amica_task_one/View/premium_popup.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/MyTheme.dart';
import 'package:amica_task_one/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Breath.dart';
import 'Chat.dart';
import 'Home.dart';
import 'Music.dart';
import 'Onboarding.dart';
import 'Onboarding1.dart';
import 'Onboarding2.dart';
import 'Onboarding3.dart';
import 'Splash.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatelessWidget {
  // static final ValueNotifier<ThemeMode> = ValueNotifier(ThemeMode.light);
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeData(
      textTheme: GoogleFonts.nunitoTextTheme(
        Theme.of(context).textTheme,
      ),
      primaryTextTheme: TextTheme(
        headlineSmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColors.darkPurple),
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      themeMode: ThemeMode.system,
      routes: {
        "Onboarding": (context) => Onboarding(),
        "Onboarding1": (context) => Onboarding1(),
        "Onboarding2": (context) => Onboarding2(),
        "Onboarding3": (context) => Onboarding3(),
        "Signin": (context) => Signin(),
        "chat": (context) => Chat(),
        "music": (context) => Music(),
        "Navbar": (context) => FloatingNavBar(),
        "Splash": (context) => Splash(),
        "breath": (context) => Breath(),
        "Statistics": (context) => Statistic(),
        "profile": (context) => Profile(),
        "changePass": (context) => ChangePassword(),
        "account": (context) => Account(),
        "settings": (context) => Settings(),
        "home": (context) => Home(),
        // "NewAlarm": (context) => NewAlarm(),
      },
      home: PremiumPopUp(),
    );
  }
}
