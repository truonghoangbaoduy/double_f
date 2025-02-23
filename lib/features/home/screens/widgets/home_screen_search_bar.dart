import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeScreenSearchBar extends StatelessWidget {
  const HomeScreenSearchBar({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.inputHorizontalPaddingMedium,
        vertical: AppDimens.inputVerticalPadding,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        border: Border.all(color: AppColors.lightGrey, width: 1),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            size: AppDimens.iconSizeSmall,
            color: AppColors.black,
          ),
          const SizedBox(width: AppDimens.sectionMarginSmall),
          Expanded(
            child: TextField(
              cursorColor: AppColors.primary,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.darkGrey),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                contentPadding: const EdgeInsets.all(0),
              ),
            ),
          ),
          const Icon(
            Icons.arrow_forward,
            size: AppDimens.iconSizeSmall,
            color: AppColors.black,
          ),
        ],
      ),
    );
  }
}
