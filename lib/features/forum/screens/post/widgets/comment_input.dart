import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommentInput extends StatelessWidget {
  const CommentInput({super.key});

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
            top: BorderSide(
              color: AppColors.lightGrey,
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/images/user.png',
              width: AppDimens.iconSizeMedium,
              height: AppDimens.iconSizeMedium,
            ),
            const SizedBox(width: AppDimens.sectionMarginMedium),
            Expanded(
              child: TextField(
                cursorColor: AppColors.primary,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: AppDimens.inputHorizontalPaddingMedium,
                    vertical: AppDimens.inputVerticalPadding,
                  ),
                  hintText: 'Add a comment...',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.lightGrey),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(AppDimens.inputBorderRadius)),
                    borderSide: BorderSide(
                      color: AppColors
                          .lightGrey, // Màu border khi không được focus
                      width: 1, // Độ dày của border
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(AppDimens.inputBorderRadius)),
                    borderSide: BorderSide(
                      color: AppColors
                          .primary, // Màu border khi TextField được focus
                      width: 1.5, // Độ dày khi focus
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: AppDimens.sectionMarginMedium),
            SvgPicture.asset(
              'assets/icons/send.svg',
              width: AppDimens.iconSizeMedium,
              height: AppDimens.iconSizeMedium,
            ),
          ],
        ));
  }
}
