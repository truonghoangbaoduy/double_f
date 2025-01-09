import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/account_circle.svg',
              width: AppDimens.iconSizeSmall * 1.2,
              height: AppDimens.iconSizeSmall * 1.2,
            ),
            const SizedBox(width: 10),
            Text(
              'John Doe',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
        const Icon(
          Icons.notifications_outlined,
          size: AppDimens.iconSizeSmall,
        ),
      ],
    );
  }
}
