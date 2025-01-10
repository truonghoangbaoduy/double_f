import 'package:double_f_last_mile_delivery/features/forum/screens/forum_screen.dart';
import 'package:double_f_last_mile_delivery/features/order/screens/order_placement.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  void handleForumClick() {
    Get.offAll(const ForumScreen());
  }

  void handleSendClick() {
    Get.to(const OrderPlacementScreen());
  }

  void handleServiceClick() {}
}
