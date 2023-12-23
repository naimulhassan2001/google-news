import 'package:flutter/material.dart';

import '../../../widget/custom_button.dart';
import '../../../widget/custom_text.dart';

class FollowContainer extends StatelessWidget {
  const FollowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0x86EAEAEA)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomText(
              title: "Follow your favourite sources",
              fontSize: 16,
            ),
            const Text(
              "Choose sources from newsstand to see more of them in your news feed. Manage them under Following",
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomButton(
                    title: "Go to Newsstand",
                    onTap: () {},
                    horizontal: 20,
                    height: 34,
                    radius: 80),
              ],
            )
          ],
        ),
      ),
    );
  }
}
