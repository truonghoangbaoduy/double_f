import 'package:double_f_last_mile_delivery/features/forum/screens/widgets/post_item_body.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommentNoReplyItem extends StatelessWidget {
  const CommentNoReplyItem(
      {super.key,
      required this.like,
      required this.comment,
      required this.name,
      required this.time,
      required this.isAuthor});

  final int like;
  final String comment;
  final String name;
  final String time;
  final bool isAuthor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: AppDimens.sectionMarginMedium,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            'assets/images/user.png',
            width: AppDimens.iconSizeMedium,
            height: AppDimens.iconSizeMedium,
          ),
          const SizedBox(width: AppDimens.iconMarginMedium),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Author',
                      style: Theme.of(context).textTheme.labelMedium?.merge(
                          const TextStyle(
                              color: AppColors.darkGrey,
                              height: 1.2,
                              fontStyle: FontStyle.italic)),
                    ),
                    Text(
                      name,
                      style: Theme.of(context).textTheme.titleMedium?.merge(
                          const TextStyle(
                              color: AppColors.black,
                              height: 1.2,
                              fontWeight: FontWeight.w600)),
                    ),
                    Text(
                      'Customer',
                      style: Theme.of(context).textTheme.bodyMedium?.merge(
                          const TextStyle(
                              color: AppColors.darkGrey, height: 1.2)),
                    ),
                    const SizedBox(height: AppDimens.sectionMarginSmall),
                    PostItemBody(content: comment),
                    const SizedBox(height: AppDimens.sectionMarginSmall),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              time,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.merge(const TextStyle(
                                      color: AppColors.darkGrey,
                                      fontWeight: FontWeight.w600)),
                            ),
                            const SizedBox(width: AppDimens.sectionMarginLarge),
                            Text(
                              "Like",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.merge(const TextStyle(
                                      color: AppColors.darkGrey,
                                      fontWeight: FontWeight.w600)),
                            ),
                            const SizedBox(width: AppDimens.sectionMarginLarge),
                            Text(
                              "Reply",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.merge(const TextStyle(
                                      color: AppColors.darkGrey,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                        like <= 0
                            ? const SizedBox(
                                width: 0,
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    like.toString(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.merge(const TextStyle(
                                            color: AppColors.darkGrey,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  const SizedBox(
                                      width: AppDimens.iconMarginSmall),
                                  SvgPicture.asset(
                                    'assets/icons/like.svg',
                                    width: AppDimens.iconSizeExtraSmall,
                                    height: AppDimens.iconSizeExtraSmall,
                                  ),
                                ],
                              ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
