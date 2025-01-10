import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';

class SearchFilterItem extends StatelessWidget {
  const SearchFilterItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.inputHorizontalPaddingSmall,
          vertical: AppDimens.inputVerticalPadding,
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(1000),
          border: Border.all(color: AppColors.primary, width: 1.0),
        ),
        child: Text(text, style: Theme.of(context).textTheme.bodyMedium));
  }
}
