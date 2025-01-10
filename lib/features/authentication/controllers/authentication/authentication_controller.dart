import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  static AuthenticationController get to => Get.find();

  RxBool isLogin = false.obs;

  void handleLogin() {
    isLogin.value = true;
  }

  void handleLogout() {
    isLogin.value = false;
  }
}
