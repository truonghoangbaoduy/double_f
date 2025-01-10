import 'package:double_f_last_mile_delivery/features/authentication/controllers/authentication/authentication_controller.dart';
import 'package:double_f_last_mile_delivery/features/home/screens/widgets/home_screen_search_bar.dart';
import 'package:double_f_last_mile_delivery/features/home/screens/widgets/serivce_list.dart';
import 'package:double_f_last_mile_delivery/features/home/screens/widgets/user_info.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthenticationController());

    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.sectionMarginMedium,
            vertical: AppDimens.sectionMarginMedium,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              controller.isLogin.value ? const UserInfo() : const SizedBox(),
              const SizedBox(height: AppDimens.sectionMarginLarge),
              const HomeScreenSearchBar(hint: 'Order tracking...'),
              const SizedBox(height: AppDimens.sectionMarginMedium),
              Image.asset('assets/images/home/shipping-banner.png'),
              const SizedBox(height: AppDimens.sectionMarginMedium),
              const ServiceList(),
            ],
          ),
        ),
      ),
    );
  }
}
