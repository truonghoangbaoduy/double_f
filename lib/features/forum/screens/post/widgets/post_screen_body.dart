import 'package:double_f_last_mile_delivery/features/forum/screens/widgets/post_item_body.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostScreenBody extends StatelessWidget {
  const PostScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.appHorizontalPadding,
        vertical: AppDimens.sectionMarginMedium,
      ),
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: AppColors.lightGrey,
          width: 1,
        ),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostItemBody(
            content:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec viverra felis eu arcu maximus sagittis. Ut pellentesque orci sit amet nisl tincidunt lobortis. Aliquam erat volutpat. Aliquam condimentum, justo sit amet tincidunt rhoncus, turpis lacus ornare nibh, ut iaculis nisi massa id neque. Suspendisse vel facilisis dolor. Vivamus non pharetra tortor, vitae ornare quam. Nulla nec quam felis.',
          ),
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
          ),
          const SizedBox(height: AppDimens.sectionMarginMedium),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
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
              const SizedBox(height: AppDimens.iconMarginSmall),
              Text('100 comments',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.darkGrey, letterSpacing: 0.5)),
              const SizedBox(height: AppDimens.iconMarginSmall),
              Text('30 shares',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.darkGrey, letterSpacing: 0.5)),
            ],
          )
        ],
      ),
    );
  }
}
