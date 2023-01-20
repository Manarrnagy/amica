import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/AppColors.dart';

class ListTiles extends StatefulWidget {
  final String title;
  final String description;
  final String imgUrl;
  const ListTiles(
      {Key? key,
      required this.title,
      required this.description,
      required this.imgUrl})
      : super(key: key);

  @override
  State<ListTiles> createState() => _ListTilesState();
}

class _ListTilesState extends State<ListTiles> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Container(
          margin: EdgeInsets.only(left: 30, bottom: 15, right: 40),
          padding: EdgeInsets.only(top: 12, bottom: 12, left: 16),
          decoration: BoxDecoration(
              color: AppColors.darkPurple,
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              Image(image: AssetImage(widget.imgUrl)),
              Container(
                width: 10,
              ),
              Text.rich(
                TextSpan(
                    text: widget.title,
                    //goals[i].title,
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: AppColors.white,
                        fontWeight: FontWeight.bold),
                    children: <InlineSpan>[
                      TextSpan(
                        text: "\n ${widget.description}",
                        style: GoogleFonts.nunito(
                            fontSize: 16,
                            color: AppColors.white,
                            fontWeight: FontWeight.normal),
                      ),
                    ]),
              ),
            ],
          )),
    );
  }
}

class DeleteButton extends StatefulWidget {
  final void Function() function;
  const DeleteButton({Key? key, required this.function}) : super(key: key);
  @override
  State<DeleteButton> createState() => _DeleteButtonState();
}

class _DeleteButtonState extends State<DeleteButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          child: Icon(
            Icons.delete_outline_rounded,
            color: AppColors.darkPurple,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: AppColors.mint),
          width: 40,
          height: 40,
        ),
        onTap: widget.function);
  }
}
