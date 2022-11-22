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
    const lightPurple = const Color(0xff263F77);
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          padding: EdgeInsets.only(left: 25, top: 50),
          height: preferredSize.height,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: lightPurple,
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
