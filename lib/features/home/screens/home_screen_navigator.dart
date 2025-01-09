import 'package:double_f_last_mile_delivery/features/home/controllers/bottom_nav_controller.dart';
import 'package:double_f_last_mile_delivery/features/home/screens/home_screen.dart';
import 'package:double_f_last_mile_delivery/features/home/screens/widgets/custom_bottom_nav.dart';
import 'package:double_f_last_mile_delivery/features/message/screens/message_screen.dart';
import 'package:double_f_last_mile_delivery/features/profile/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenNavigation extends StatelessWidget {
  HomeScreenNavigation({super.key});

  final BottomNavController _navController = Get.put(BottomNavController());

  final List<Widget> _screens = [
    const HomeScreen(),
    const MessageScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => _screens[_navController.currentIndex.value]),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
