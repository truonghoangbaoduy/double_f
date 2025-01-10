import 'package:double_f_last_mile_delivery/features/message/controllers/message_controller.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreenHeader extends StatelessWidget {
  const ChatScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MessageController());

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.appHorizontalPadding,
        vertical: AppDimens.sectionMarginSmall,
      ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  side: BorderSide.none,
                ),
                onPressed: () => controller.handleBack(),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: AppDimens.iconSizeExtraSmall,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(width: AppDimens.sectionMarginSmall),
              Text(
                controller.name.value,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.search,
                  size: AppDimens.iconSizeSmall, color: AppColors.black),
              SizedBox(width: AppDimens.sectionMarginSmall),
              Icon(Icons.menu,
                  size: AppDimens.iconSizeSmall, color: AppColors.black),
            ],
          ),
        ],
      ),
    );
  }
}
