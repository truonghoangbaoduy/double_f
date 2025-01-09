import 'package:double_f_last_mile_delivery/features/home/controllers/bottom_nav_controller.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController navController = Get.find();

    return Obx(() => Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: AppColors.lightGrey, width: 1),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: navController.currentIndex.value,
          onTap: (index) => navController.updateIndex(index),
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.lightGrey,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          backgroundColor: AppColors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        )));
  }
}
