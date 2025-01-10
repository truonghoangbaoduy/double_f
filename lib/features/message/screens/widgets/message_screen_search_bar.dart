import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';

class MessageScreenSearchBar extends StatelessWidget {
  const MessageScreenSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.inputHorizontalPaddingMedium,
        vertical: AppDimens.inputVerticalPadding,
      ),
      decoration: BoxDecoration(
        color: AppColors.neutralOffWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            size: AppDimens.iconSizeSmall,
            color: AppColors.neutralDisable,
          ),
          const SizedBox(width: AppDimens.sectionMarginSmall),
          Expanded(
            child: TextField(
              cursorColor: AppColors.primary,
              decoration: InputDecoration(
                hintText: 'Search',
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
        ],
      ),
    );
  }
}
