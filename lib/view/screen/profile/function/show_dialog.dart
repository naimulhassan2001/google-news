import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_news/utils/app_string.dart';

import '../../../../controller/main_screen_controller.dart';
import '../../../../utils/app_image.dart';
import '../../../widget/custom_outline_button.dart';
import '../../../widget/custom_text.dart';
import '../widget/item.dart';

class ShowDialogFunction {


  MainScreenController mainScreenController = Get.put(MainScreenController());



  Future<void> showDialogMethod(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Google"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
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
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 12,
                                child: ClipOval(
                                  child: Image.asset(AppImage.nayem, width: 24, height: 24,),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(

                                children: [
                                  CustomText(title: "Naimul Hassan"),
                                  // Expanded(
                                  //   child: const Text(
                                  //      "naimulhassan0001@gmail.com",
                                  //     style: TextStyle(
                                  //       fontSize: 12,
                                  //       fontWeight: FontWeight.w400,
                                  //     ),
                                  //
                                  //   ),
                                  // )
                                ],
                              ),
                              const Spacer(),
                              Container(
                                height: 24,
                                  width: 24,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1,
                                          color: mainScreenController.themeTextColor(),),
                                      borderRadius:
                                          BorderRadius.circular(80),
                                    ),
                                  ),
                                  child:
                                      const Icon(Icons.arrow_drop_down))
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButtonOutLine(
                                title: AppString.googleAccount,
                                onTap: () {},
                                horizontal: 20,
                                textColor: mainScreenController.themeTextColor(),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                outlineColor: mainScreenController.themeTextColor(),

                                height: 34,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Divider(),
                          ProfileItem(
                              title: AppString.notifications,
                              icon: Icons.notifications_active_outlined),
                          const SizedBox(
                            height: 16,
                          ),
                          ProfileItem(
                              title: AppString.myActivity,
                              icon: Icons.access_time),
                          const SizedBox(
                            height: 16,
                          ),
                          Obx(() =>  Switch(value: mainScreenController.darkTheme.value, onChanged: (value) {


                            mainScreenController.changeTheme(value) ;


                            if(value == true) {
                              Get.changeTheme(ThemeData.dark());

                            } else {
                              Get.changeTheme(ThemeData.light());

                            }

                          })
                          )



                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ProfileItem(
                        title: AppString.newsSetting,
                        icon: Icons.settings),
                    const SizedBox(
                      height: 16,
                    ),
                    ProfileItem(
                        title: AppString.helpFeedback,
                        icon: Icons.question_mark_outlined),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomText(
                            title: AppString.termsOfService,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        CustomText(
                            title: AppString.privacyPolicy,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
