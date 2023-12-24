import 'package:flutter/material.dart';
import 'package:google_news/view/widget/custom_text.dart';

class ProfileItem extends StatelessWidget {
  ProfileItem({
    super.key,
    required this.title,
    required this.icon,
  });

  String title;

  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18),
        const SizedBox(
          width: 8,
        ),
        CustomText(title: title, fontWeight: FontWeight.w400, fontSize: 12),

      ],
    );
  }
}
