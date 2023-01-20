import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/BoldNunito.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlowSplash extends StatefulWidget {
  const FlowSplash({Key? key}) : super(key: key);

  @override
  State<FlowSplash> createState() => _FlowSplashState();
}

class _FlowSplashState extends State<FlowSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
          child: Column(
        children: [
          Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Image.asset("assets/Images/logo_medium.png")),
          Container(
              height: MediaQuery.of(context).size.height * 0.25,
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("Splash");
                },
                child: BoldNunito(
                  input: "Student Flow click here",
                  color: AppColors.darkPurple,
                  align: TextAlign.center,
                ),
              )),
          Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.25,
              child: TextButton(
                onPressed: () {},
                child: BoldNunito(
                  input: "Doctor Flow click here",
                  color: AppColors.darkPurple,
                  align: TextAlign.center,
                ),
              )),
          Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height * 0.15,
            child: Text(
              "All rights reserved   - Amica Bot© 2022",
              style: GoogleFonts.nunito(fontSize: 12, color: AppColors.grey),
            ),
          )
        ],
      )),
    );
  }
}
