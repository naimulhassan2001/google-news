import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_news/controller/main_screen_controller.dart';

import 'widget/listview_item.dart';

class HeadlinesScreen extends StatelessWidget {
  HeadlinesScreen({super.key});

  MainScreenController mainScreenController = Get.put(MainScreenController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Column(
        children: [
          Obx(() => Text(mainScreenController.aa.value)),
          Container(
            height: (50 * 110) + 70,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 50,
              itemBuilder: (context, index) {
                return const ListViewItem();
              },
            ),
          )
        ],
      ),
    );
  }
}
