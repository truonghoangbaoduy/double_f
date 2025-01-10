import 'package:double_f_last_mile_delivery/features/authentication/screens/login/login.dart';
import 'package:double_f_last_mile_delivery/features/home/screens/widgets/home_screen_body.dart';
import 'package:double_f_last_mile_delivery/features/home/screens/widgets/home_screen_header.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenNotSigned extends StatelessWidget {
  const HomeScreenNotSigned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HomeScreenHeader(),
            const HomeScreenBody(),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.appHorizontalPadding,
                vertical: AppDimens.sectionMarginMedium,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const LoginScreen());
                  },
                  child: const Text('Sign in'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
