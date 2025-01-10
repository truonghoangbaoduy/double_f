import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class ChatScreenFooter extends StatelessWidget {
  const ChatScreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.appHorizontalPadding,
        vertical: AppDimens.sectionMarginMedium,
      ),
      decoration: const BoxDecoration(
        color: AppColors.white,
        border: Border(
          top: BorderSide(
            color: AppColors.lightGrey,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Icon(Icons.add,
              size: AppDimens.iconSizeSmall, color: AppColors.darkGrey),
          const SizedBox(width: AppDimens.sectionMarginMedium),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.neutralOffWhite,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.only(
                left: AppDimens.iconMarginLarge,
              ),
              child: TextField(
                cursorColor: AppColors.primary,
                decoration: InputDecoration(
                  hintText: 'Send a message...',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.neutralDisable),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.all(0),
                ),
              ),
            ),
          ),
          const SizedBox(width: AppDimens.sectionMarginMedium),
          SvgPicture.asset(
            'assets/icons/send.svg',
            width: AppDimens.iconSizeMedium,
            height: AppDimens.iconSizeMedium,
            colorFilter: const ColorFilter.mode(
              AppColors.primary,
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }
}
