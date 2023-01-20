import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/BoldNunito.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          children: [
            Container(
              height: 125,
            ),
            Image.asset(
              "assets/Images/Onboarding1.png",
            ),
            Container(
              margin: EdgeInsets.only(top: 80, bottom: 20),
              child: BoldNunito(
                input: "Hello and welcome to Amica",
                color: AppColors.darkPurple,
                align: TextAlign.center,
              ),
            ),
            Container(
              width: 262,
              alignment: Alignment.center,
              child: RegularNunito(
                input:
                    "the app that built for take care of your mental health.",
                color: AppColors.black,
                align: TextAlign.center,
              ),
            ),
            // Container(
            //   alignment: Alignment.bottomRight,
            //   margin: EdgeInsets.only(top: 90, right: 20),
            //   child: TextButton(
            //     onPressed: () {
            //       Navigator.of(context).pushNamed("Onboarding2");
            //     },
            //     child: RegularNunito(
            //       input: 'Next',
            //       color: AppColors.darkPurple,
            //       align: TextAlign.center,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
