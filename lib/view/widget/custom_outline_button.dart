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
      required this.onTap});

  String title;
  Function() onTap;
  double height;
  double fontSize;
  double radius;
  double horizontal;
  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        padding: EdgeInsets.symmetric(horizontal: horizontal),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0x86EAEAEA)),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Center(
          child: Text(title,
              style: TextStyle(
                color: Colors.blue,
                fontSize: fontSize,
                fontFamily: 'Poppins',
                fontWeight: fontWeight,
              )),
        ),
      ),
    );
  }
}
