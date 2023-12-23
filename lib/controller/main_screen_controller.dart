import 'package:get/get.dart';

class MainScreenController extends GetxController {
  RxInt currentIndex = 2.obs;
  RxBool darkMode = true.obs;
  RxBool tabShow = false.obs;

  RxString aa = "Latest".obs ;

  RxString title = "Google News".obs;

  bottomOnTap(int value) {
    currentIndex.value = value;
    if (value == 0) {
      title.value = "Google News";
      tabShow.value = false ;

    } else if (value == 1) {
      title.value = "Headlines";
      tabShow.value = true ;
    } else if (value == 2) {
      title.value = "Following";
      tabShow.value = false ;

    } else if (value == 3) {
      title.value = "Newsstand";
      tabShow.value = false ;

    }
  }
}
