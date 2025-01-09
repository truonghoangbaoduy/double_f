import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.inputHorizontalPadding,
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
          ),
          const SizedBox(width: AppDimens.sectionMarginSmall),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Order tracking ...',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.lightGrey),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.all(0)),
            ),
          ),
          const Icon(
            Icons.arrow_forward,
            size: AppDimens.iconSizeSmall,
          ),
        ],
      ),
    );
  }
}
