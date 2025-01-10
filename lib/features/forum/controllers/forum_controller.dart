import 'package:double_f_last_mile_delivery/features/forum/screens/post/post_screen.dart';
import 'package:get/get.dart';

class ForumController extends GetxController {
  static ForumController get instance => Get.find();

  void handleClickHome() {
    Get.back();
  }

  void handleClickComment() {
    Get.to(const PostScreen());
  }

  void handleClickBackToForum() {
    Get.back();
  }
}
