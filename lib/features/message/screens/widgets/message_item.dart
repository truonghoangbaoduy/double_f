import 'package:double_f_last_mile_delivery/features/message/controllers/message_controller.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MessageItem extends StatelessWidget {
  const MessageItem(
      {super.key,
      required this.isOnline,
      required this.message,
      required this.time,
      required this.unreadCount,
      required this.name});

  final bool isOnline;
  final String message;
  final String time;
  final int unreadCount;
  final String name;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MessageController());

    return ElevatedButton(
      onPressed: () => controller.handleClickMessage(name),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        side: BorderSide.none,
      ),
      child: Container(
        padding: const EdgeInsets.only(
          top: AppDimens.sectionMarginMedium,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/avatar.png',
                    fit: BoxFit.cover,
                    width: 56,
                    height: 56,
                  ),
                ),
                Positioned(
                  top: -2, // Căn lề trên
                  right: -2, // Căn lề phải
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: AppColors.white,
                          width: 2,
                        ),
                      ),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                  ),
                ),
              ],
            ),
            const SizedBox(width: AppDimens.sectionMarginMedium),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        name,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                ),
                      ),
                      Text(
                        time,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: 13,
                              color: AppColors.darkGrey,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppDimens.iconMarginExtraSmall),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          message,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 14,
                                    color: AppColors.darkGrey,
                                  ),
                        ),
                      ),
                      const SizedBox(width: AppDimens.iconMarginSmall),
                      unreadCount <= 0
                          ? const Icon(
                              Icons.done_outlined,
                              color: AppColors.primary,
                              size: AppDimens.iconSizeSmall,
                            )
                          : Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                color: AppColors.messageNotification,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                unreadCount.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: 12,
                                      color: AppColors.primary,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
