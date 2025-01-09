import 'package:double_f_last_mile_delivery/features/home/screens/widgets/service_item.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';

class ServiceList extends StatelessWidget {
  const ServiceList({super.key});

  @override
  Widget build(BuildContext context) {
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
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            ServiceItem(title: 'Send', icon: 'assets/icons/delivery.svg'),
            ServiceItem(title: 'Forum', icon: 'assets/icons/forum.svg'),
            ServiceItem(title: 'Service', icon: 'assets/icons/scooter.svg'),
            ServiceItem(title: 'Service', icon: 'assets/icons/scooter.svg'),
            ServiceItem(title: 'Service', icon: 'assets/icons/scooter.svg')
          ],
        )
      ],
    );
  }
}
