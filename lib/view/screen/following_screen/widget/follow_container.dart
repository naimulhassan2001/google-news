import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_news/controller/main_screen_controller.dart';

import '../../../widget/custom_button.dart';
import '../../../widget/custom_text.dart';

class FollowContainer extends StatelessWidget {
  FollowContainer({super.key});

  MainScreenController mainScreenController = Get.put(MainScreenController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
            color: mainScreenController.themeCircleBackgroundColor(),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 1,
                offset: Offset(0, 1), // Shadow position
              ),
            ],
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
                      radius: 80,
                      color: Color(0xE55460C4),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
