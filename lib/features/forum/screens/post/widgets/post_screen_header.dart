import 'package:double_f_last_mile_delivery/features/forum/controllers/forum_controller.dart';
import 'package:double_f_last_mile_delivery/features/forum/screens/widgets/post_item_header.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class PostScreenHeader extends StatelessWidget {
  const PostScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForumController());

    return Container(
      padding: const EdgeInsets.only(
        left: AppDimens.appHorizontalPadding,
        right: AppDimens.appHorizontalPadding,
        top: AppDimens.sectionMarginSmall,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              side: BorderSide.none,
            ),
            onPressed: () => controller.handleClickBackToForum(),
            child: const Icon(
              Icons.arrow_back_ios,
              size: AppDimens.iconSizeExtraSmall,
              color: AppColors.black,
            ),
          ),
          const Expanded(child: PostItemHeader()),
        ],
      ),
    );
  }
}
