import 'package:flutter/material.dart';

class CustomButtonOutLine extends StatelessWidget {
  CustomButtonOutLine(
      {super.key,
      required this.title,
      this.height = 56,
      this.fontSize = 18,
      this.radius = 8,
      this.horizontal = 10,
      this.fontWeight = FontWeight.w600,
      this.textColor = Colors.blue,
      this.outlineColor = const Color(0x86EAEAEA),
      required this.onTap});

  String title;
  Function() onTap;
  double height;
  double fontSize;
  double radius;
  double horizontal;
  FontWeight fontWeight;
  Color textColor;

  Color? outlineColor = const Color(0x86EAEAEA);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        padding: EdgeInsets.symmetric(horizontal: horizontal),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: outlineColor! ),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Center(
          child: Text(title,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontFamily: 'Poppins',
                fontWeight: fontWeight,
              )),
        ),
      ),
    );
  }
}
