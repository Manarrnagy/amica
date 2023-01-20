import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/AppColors.dart';

class AppComponents {
  static Widget backButton(BuildContext context) {
    return InkWell(
        child: Container(
          margin: EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImageIcon(
                AssetImage(
                  "assets/Images/arrow-small-left.png",
                ),
                color: AppColors.darkPurple,
              ),
              Text(
                "Back",
                style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: AppColors.darkPurple,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        });
  }

  static Widget imageIconButton(
    String imgUrl,
    VoidCallback onPressed,
  ) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: AppColors.mint,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        child: ImageIcon(
          AssetImage(imgUrl),
          color: AppColors.darkPurple,
        ),
        onTap: onPressed,
      ),
    );
  }

  static Widget bottomButton(
      BuildContext context, VoidCallback onPressed, Widget widget,
      //String text,
      {Color? color}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: MaterialButton(
        color: color ?? AppColors.mint,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        clipBehavior: Clip.antiAlias,
        onPressed: onPressed,
        child: widget,
        // RegularNunito(
        //   input: text,
        //   color: AppColors.white,
        //   align: TextAlign.center,
        // ),
        elevation: 0,
      ),
    );
  }
}
