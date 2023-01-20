import 'package:flutter/material.dart';

import '../theme/AppColors.dart';

class Background extends StatelessWidget {
  final Widget child;
  double marginTop;
  double marginLeft;
  double marginRight;
  Background({
    Key? key,
    required this.child,
    this.marginTop = 0,
    this.marginLeft = 0,
    this.marginRight = 0,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: marginTop, left: marginLeft, right: marginRight),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.lightMint,
            AppColors.lavender,
          ],
        ),
      ),
      child: child,
    );
  }
}
