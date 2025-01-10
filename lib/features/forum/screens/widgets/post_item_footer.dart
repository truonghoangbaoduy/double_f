import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostItemFooter extends StatelessWidget {
  const PostItemFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/like.svg',
                  width: AppDimens.iconSizeExtraSmall,
                  height: AppDimens.iconSizeExtraSmall,
                ),
                const SizedBox(width: AppDimens.iconMarginSmall),
                Text(
                  '1K',
                  style: Theme.of(context).textTheme.bodyMedium?.merge(
                      const TextStyle(color: AppColors.darkGrey, height: 1)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('100 comments',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.darkGrey, letterSpacing: 0.5)),
                const SizedBox(width: AppDimens.iconMarginLarge),
                Text('30 shares',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.darkGrey, letterSpacing: 0.5)),
              ],
            )
          ],
        ),
        const SizedBox(height: AppDimens.sectionMarginSmall),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/thumb_up.svg',
                  width: AppDimens.iconSizeMediumSmall,
                  height: AppDimens.iconSizeMediumSmall,
                  colorFilter: const ColorFilter.mode(
                      AppColors.darkGrey, BlendMode.srcIn),
                ),
                const SizedBox(width: AppDimens.iconMarginMedium),
                Text('Like',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.darkGrey,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/comment.svg',
                  width: AppDimens.iconSizeMediumSmall,
                  height: AppDimens.iconSizeMediumSmall,
                  colorFilter: const ColorFilter.mode(
                      AppColors.darkGrey, BlendMode.srcIn),
                ),
                const SizedBox(width: AppDimens.iconMarginMedium),
                Text('Comment',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.darkGrey,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/share.svg',
                  width: AppDimens.iconSizeMediumSmall,
                  height: AppDimens.iconSizeMediumSmall,
                  colorFilter: const ColorFilter.mode(
                      AppColors.darkGrey, BlendMode.srcIn),
                ),
                const SizedBox(width: AppDimens.iconMarginMedium),
                Text('Share',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.darkGrey,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w500)),
              ],
            )
          ],
        )
      ],
    );
  }
}
