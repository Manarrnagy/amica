import 'package:amica_task_one/View/Background.dart';
import 'package:amica_task_one/theme/AppColors.dart';
import 'package:amica_task_one/theme/RegularNunito.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Onboarding1.dart';
import 'Onboarding2.dart';
import 'Onboarding3.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List pages = [Onboarding1(), Onboarding2(), Onboarding3()];
  final controller = PageController(viewportFraction: 1, keepPage: true);
  final _itemCount = 3;
  int pageIndex = 0;
  List btnTxts = ["Next", "Next", "Start Your Journey "];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Stack(
          children: [
            Center(
              child: PageView.builder(
                  controller: controller,
                  itemCount: _itemCount,
                  itemBuilder: (_, index) {
                    // pageIndex = index;
                    return pages[index];
                  }),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 50, left: 20),
              child: SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: WormEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    type: WormType.thin,
                    activeDotColor: AppColors.darkPurple,
                    dotColor: AppColors.mint),
              ),
            ),
            Positioned(
              right: 20,
              top: 30,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("Signin");
                },
                child: RegularNunito(
                  input: "Skip",
                  color: AppColors.darkPurple,
                  align: TextAlign.center,
                ),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 30,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    if (pageIndex < 2) {
                      controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                      pageIndex++;
                    } else {
                      Navigator.of(context).pushNamed("Signin");
                    }
                  });
                },
                child: RegularNunito(
                  input: btnTxts[pageIndex],
                  color: AppColors.darkPurple,
                  align: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
