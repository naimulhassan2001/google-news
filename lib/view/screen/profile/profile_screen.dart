import 'package:flutter/material.dart';
import 'package:google_news/utils/app_image.dart';
import 'package:google_news/utils/app_string.dart';
import 'package:google_news/view/screen/profile/widget/item.dart';
import 'package:google_news/view/widget/custom_outline_button.dart';
import 'package:google_news/view/widget/custom_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Center(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFDF7F7),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 4,
                        offset: Offset(0, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(title: "Google", fontSize: 18),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                    child: ClipOval(
                                      child: Image.asset(AppImage.nayem),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(title: "Naimul Hassan"),
                                      CustomText(
                                        title: "naimulhassan0001@gmail.com",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 1, color: Colors.black54),
                                          borderRadius:
                                              BorderRadius.circular(80),
                                        ),
                                      ),
                                      child: const Icon(Icons.arrow_drop_down))
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
                                    textColor: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    outlineColor: Colors.black54,
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
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ProfileItem(
                            title: AppString.newsSetting, icon: Icons.settings),
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
                            CustomText(title: AppString.termsOfService, fontSize: 12, fontWeight: FontWeight.w400),
                            CustomText(title: AppString.privacyPolicy, fontSize: 12, fontWeight: FontWeight.w400),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
