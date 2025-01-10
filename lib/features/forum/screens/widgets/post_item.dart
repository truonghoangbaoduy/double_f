import 'package:double_f_last_mile_delivery/features/forum/screens/widgets/post_item_body.dart';
import 'package:double_f_last_mile_delivery/features/forum/screens/widgets/post_item_footer.dart';
import 'package:double_f_last_mile_delivery/features/forum/screens/widgets/post_item_header.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.appHorizontalPadding,
        vertical: AppDimens.sectionMarginMedium,
      ),
      decoration: const BoxDecoration(
        color: Colors.transparent,
        border: Border(
          bottom: BorderSide(color: AppColors.lightGrey, width: 1),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const PostItemHeader(),
          const SizedBox(height: AppDimens.sectionMarginSmall),
          PostItemBody(
            content:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec viverra felis eu arcu maximus sagittis. Ut pellentesque orci sit amet nisl tincidunt lobortis. Aliquam erat volutpat. Aliquam condimentum, justo sit amet tincidunt rhoncus, turpis lacus ornare nibh, ut iaculis nisi massa id neque. Suspendisse vel facilisis dolor. Vivamus non pharetra tortor, vitae ornare quam. Nulla nec quam felis.',
          ),
          const PostItemFooter(),
        ],
      ),
    );
  }
}
