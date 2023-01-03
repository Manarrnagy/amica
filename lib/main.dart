import 'package:amica_task_one/Sign_in.dart';
import 'package:amica_task_one/View/FloatingNavBar.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/MyTheme.dart';
import 'package:amica_task_one/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Chat.dart';
import 'Music.dart';
import 'Onboarding.dart';

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
                color: AppColors.darkPurple)));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      themeMode: ThemeMode.system,
      routes: {
        "Onboarding": (context) => Onboarding(),
        "Signin": (context) => Signin(),
        "chat": (context) => Chat(),
        "music": (context) => Music(),
        "Navbar": (context) => FloatingNavBar()
        // "NewAlarm": (context) => NewAlarm(),
      },
      home: Onboarding(),
    );
  }
}
