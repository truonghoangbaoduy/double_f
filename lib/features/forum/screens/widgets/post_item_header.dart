import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';

class PostItemHeader extends StatelessWidget {
  const PostItemHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/user.png',
              width: AppDimens.iconSizeMedium,
              height: AppDimens.iconSizeMedium,
            ),
            const SizedBox(width: AppDimens.iconMarginMedium),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Jack',
                  style: Theme.of(context).textTheme.titleMedium?.merge(
                      const TextStyle(
                          color: AppColors.black,
                          height: 1.2,
                          fontWeight: FontWeight.w600)),
                ),
                Text(
                  'Customer',
                  style: Theme.of(context).textTheme.bodyMedium?.merge(
                      const TextStyle(color: AppColors.darkGrey, height: 1.2)),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '2d',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.merge(const TextStyle(color: AppColors.darkGrey)),
            ),
            const SizedBox(width: AppDimens.iconMarginSmall),
            const Icon(
              Icons.more_horiz,
              color: AppColors.darkGrey,
              size: AppDimens.iconSizeSmall,
            ),
          ],
        ),
      ],
    );
  }
}
