import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/BoldNunito.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/material.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({Key? key}) : super(key: key);

  @override
  State<Onboarding3> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding3> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          children: [
            Container(
              height: 115,
            ),
            Image.asset(
              "assets/Images/Onboarding3.png",
            ),
            Container(
              margin: EdgeInsets.only(top: 80, bottom: 20),
              child: BoldNunito(
                input: "Explore and Heal",
                color: AppColors.darkPurple,
                align: TextAlign.center,
              ),
            ),
            Container(
              width: 262,
              alignment: Alignment.center,
              child: RegularNunito(
                input:
                    "what you waiting for explore our application now and enjoy your healing journey.",
                color: AppColors.black,
                align: TextAlign.center,
              ),
            ),
            // Container(
            //   alignment: Alignment.bottomRight,
            //   margin: EdgeInsets.only(right: 20, top: 60),
            //   child: TextButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, "Signin");
            //     },
            //     child: Text(
            //       "Start Your Journey",
            //       style: GoogleFonts.nunito(
            //           fontSize: 16,
            //           fontWeight: FontWeight.bold,
            //           color: AppColors.darkPurple),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
