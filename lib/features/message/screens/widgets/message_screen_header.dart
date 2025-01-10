import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageScreenHeader extends StatelessWidget {
  const MessageScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.appHorizontalPadding,
          vertical: AppDimens.sectionMarginMedium),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.lightGrey,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Messages', style: Theme.of(context).textTheme.headlineMedium),
          SvgPicture.asset(
            'assets/icons/add_message.svg',
            width: AppDimens.iconSizeSmall,
            height: AppDimens.iconSizeSmall,
            colorFilter:
                const ColorFilter.mode(AppColors.black, BlendMode.srcIn),
          )
        ],
      ),
    );
  }
}
