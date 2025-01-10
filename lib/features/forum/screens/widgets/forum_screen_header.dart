import 'package:double_f_last_mile_delivery/features/forum/controllers/forum_controller.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ForumScreenHeader extends StatelessWidget {
  const ForumScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForumController());

    return Container(
        height: MediaQuery.sizeOf(context).height * 0.1,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/logo/app_background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.appHorizontalPadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Forum',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.search,
                    size: AppDimens.iconSizeSmall,
                    color: AppColors.black,
                  ),
                  const SizedBox(width: AppDimens.iconMarginLarge),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      side: BorderSide.none,
                    ),
                    onPressed: () => controller.handleClickHome(),
                    child: const Icon(
                      Icons.home,
                      size: AppDimens.iconSizeSmall,
                      color: AppColors.black,
                    ),
                  ),
                  const SizedBox(width: AppDimens.iconMarginLarge),
                  Image.asset('assets/images/user.png',
                      width: AppDimens.iconSizeMedium,
                      height: AppDimens.iconSizeMedium),
                ],
              )
            ],
          ),
        ));
  }
}
