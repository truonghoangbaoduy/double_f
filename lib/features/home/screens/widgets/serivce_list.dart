import 'package:double_f_last_mile_delivery/features/home/controllers/home_controller.dart';
import 'package:double_f_last_mile_delivery/features/home/screens/widgets/service_item.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceList extends StatelessWidget {
  const ServiceList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Services',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'See all',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.primary,
                      ),
                ),
                const SizedBox(width: AppDimens.iconMarginSmall),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: AppDimens.iconSizeExtraSmall,
                  color: AppColors.primary,
                )
              ],
            )
          ],
        ),
        const SizedBox(height: AppDimens.sectionMarginSmall),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            ServiceItem(
                title: 'Send',
                icon: 'assets/icons/delivery.svg',
                onTap: () => controller.handleSendClick()),
            ServiceItem(
                title: 'Forum',
                icon: 'assets/icons/forum.svg',
                onTap: () => controller.handleForumClick()),
            ServiceItem(
                title: 'Service',
                icon: 'assets/icons/scooter.svg',
                onTap: () => controller.handleServiceClick()),
            ServiceItem(
                title: 'Service',
                icon: 'assets/icons/scooter.svg',
                onTap: () => controller.handleServiceClick()),
            ServiceItem(
                title: 'Service',
                icon: 'assets/icons/scooter.svg',
                onTap: () => controller.handleServiceClick())
          ],
        )
      ],
    );
  }
}
