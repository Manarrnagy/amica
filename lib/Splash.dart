import 'package:amica_task_one/View/Background.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacementNamed(context, "Onboarding");
  }

  Widget build(BuildContext context) {
    return Background(
      child: Center(child: Image.asset("assets/Images/splashLogo.png")),
    );
  }
}
