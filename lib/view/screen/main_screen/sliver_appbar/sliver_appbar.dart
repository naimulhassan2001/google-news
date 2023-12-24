import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_news/view/screen/profile/function/show_dialog.dart';

import '../../../../controller/main_screen_controller.dart';
import '../../../../utils/app_image.dart';

class SliverAppBarWidget extends StatelessWidget {
  SliverAppBarWidget({super.key});

  MainScreenController mainScreenController = Get.put(MainScreenController());

  ShowDialogFunction showDialogFunction = ShowDialogFunction();

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Obx(() => Text(mainScreenController.title.value)),
      centerTitle: true,
      floating: true,
      snap: true,
      leading: const Icon(Icons.search),
      actions: [
        GestureDetector(
          onTap: () {
            showDialogFunction.showDialogMethod(context);
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipOval(child: Image.asset(AppImage.nayem)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
