import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.title,
      this.height = 56,
      this.fontSize = 18,
      this.radius = 8,
      this.horizontal = 10,
      this.color = const Color(0xFF0668E3),
      required this.onTap});

  String title;
  Function() onTap;
  double height;
  double fontSize;
  double radius;
  double horizontal;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: height,
          padding: EdgeInsets.symmetric(horizontal: horizontal),
          decoration: ShapeDecoration(
            color: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius)),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          )),
    );
  }
}
