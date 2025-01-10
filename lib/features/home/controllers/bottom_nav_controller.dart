import 'package:get/get.dart';

class BottomNavController extends GetxController {
  // Chỉ số mục hiện tại
  var currentIndex = 0.obs;

  // Hàm cập nhật chỉ số
  void updateIndex(int index) {
    currentIndex.value = index;
  }
}
