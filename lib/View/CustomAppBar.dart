import 'package:amica_task_one/theme/AppColors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  final double height;
  final double avatarHeight;
  final double avatartop;
  final double avatarStart;
  CustomAppBar({
    required this.child,
    this.height = kToolbarHeight,
    this.avatarHeight = kToolbarHeight,
    this.avatartop = kToolbarHeight,
    this.avatarStart = kToolbarHeight,
  });
  @override
  Size get preferredSize => Size.fromHeight(height);
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          padding: EdgeInsets.only(left: 25, top: 50),
          height: preferredSize.height,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: AppColors.darkPurple,
          ),
          child: child,
        ),
        PositionedDirectional(
          top: avatartop, //48,
          start: avatarStart, //302,
          // end: -100,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(
              "assets/Images/avatar.png",
            ),
            radius: avatarHeight + 2,
            //  24,
          ),
        ),
      ],
    );
  }
}
