import 'package:amica_task_one/theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/RegularNunito.dart';

class FormBackground extends StatefulWidget {
  final Widget formChild;
  // final double formHeight;
  final String btntxt;
  final void Function() buttonFunc;
  final void Function() cancel;
  const FormBackground(
      {Key? key,
      required this.formChild,
      // required this.formHeight,
      required this.buttonFunc,
      required this.cancel,
      required this.btntxt})
      : super(key: key);

  @override
  State<FormBackground> createState() => _FormBackgroundState();
}

class _FormBackgroundState extends State<FormBackground> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: AppColors.lightGrey),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                // height: widget.formHeight,
                margin: EdgeInsets.only(bottom: 50, left: 35, right: 35),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [AppColors.lavender, AppColors.lightMint],
                  ),
                ),
                child: widget.formChild,
              ),
              Positioned(
                bottom: 30,
                left: MediaQuery.of(context).size.width * 0.25,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  margin: EdgeInsets.only(bottom: 0),
                  child: MaterialButton(
                    color: AppColors.mint,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    clipBehavior: Clip.antiAlias,
                    onPressed: widget.buttonFunc,
                    // widget.buttonFunc,
                    child: RegularNunito(
                      input: widget.btntxt,
                      color: AppColors.white,
                      align: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
          MaterialButton(
            onPressed: widget.cancel,
            // widget.cancel,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.cancel_outlined,
                  color: AppColors.white,
                ),
                Text(
                  " Cancel",
                  style: GoogleFonts.nunito(
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
