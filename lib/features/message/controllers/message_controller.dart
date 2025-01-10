import 'package:double_f_last_mile_delivery/features/message/screens/chat/screens/chat_screen.dart';
import 'package:get/get.dart';

class MessageController extends GetxController {
  static MessageController get to => Get.find();

  RxString name = 'John Doe'.obs;

  void handleClickMessage(String name) {
    this.name.value = name;
    Get.to(const ChatScreen());
  }

  void handleBack() {
    Get.back();
  }
}
