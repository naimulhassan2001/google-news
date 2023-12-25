import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_news/controller/main_screen_controller.dart';
import 'package:google_news/view/widget/custom_text.dart';


class EntertainmentListView extends StatelessWidget {
  EntertainmentListView({
    super.key,
    required this.color,
  });

  Color color;

  MainScreenController mainScreenController = Get.put(MainScreenController());


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 100,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Obx(() => CustomText(
                              title: "RadioTimes",
                              fontSize: 16,
                              color: mainScreenController.themeTextColor())),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 80,
                        left: 30,
                        child: Obx(() => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black38,
                                    blurRadius: 1,
                                    offset: Offset(0, 1), // Shadow position
                                  ),
                                ],
                              ),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: mainScreenController
                                    .themeCircleBackgroundColor(),
                                child: const Icon(
                                  Icons.star_border,
                                ),
                              ),
                            ))),
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomText(title: "Radio Times", fontWeight: FontWeight.w400),
                const SizedBox(
                  height: 4,
                ),
                CustomText(
                  title: "Free of charge",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
