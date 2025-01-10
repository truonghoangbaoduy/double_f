import 'package:double_f_last_mile_delivery/features/home/screens/home_screen_navigator.dart';
import 'package:get/get.dart';

class ForumController extends GetxController {
  static ForumController get instance => Get.find();

  void handleClickHome() {
    Get.offAll(HomeScreenNavigation());
  }
}
