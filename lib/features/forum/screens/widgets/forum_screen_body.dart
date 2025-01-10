import 'package:double_f_last_mile_delivery/features/forum/screens/widgets/post_input.dart';
import 'package:double_f_last_mile_delivery/features/forum/screens/widgets/post_item.dart';
import 'package:double_f_last_mile_delivery/features/forum/screens/widgets/search_filter_list.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';

class ForumScreenBody extends StatelessWidget {
  const ForumScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchFilterList(),
            SizedBox(height: AppDimens.sectionMarginMedium),
            PostInput(),
            PostItem(),
            PostItem(),
            PostItem(),
            PostItem(),
            PostItem(),
          ],
        ),
      ),
    );
  }
}
