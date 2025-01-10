import 'package:double_f_last_mile_delivery/features/forum/screens/widgets/search_filter_item.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';

class SearchFilterList extends StatelessWidget {
  const SearchFilterList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.appHorizontalPadding,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          SearchFilterItem(text: 'Newest'),
          SizedBox(width: AppDimens.sectionMarginSmall),
          SearchFilterItem(text: 'Most Popular'),
          SizedBox(width: AppDimens.sectionMarginSmall),
          SearchFilterItem(text: 'Following'),
        ],
      ),
    );
  }
}
