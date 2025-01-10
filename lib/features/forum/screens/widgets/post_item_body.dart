import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostItemBody extends StatelessWidget {
  PostItemBody({super.key, required this.content});

  final RxBool isExpanded = false.obs;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        content.length < 100
            ? Text(
                content,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.black,
                      height: 1.5,
                      letterSpacing: 0.5,
                    ),
              )
            : Obx(() {
                return Text(
                  isExpanded.value ? content : content.substring(0, 100),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.black,
                        height: 1.5,
                        letterSpacing: 0.5,
                      ),
                );
              }),
        content.length < 100
            ? const SizedBox(
                height: 0,
              )
            : TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  side: BorderSide.none,
                ),
                onPressed: () => isExpanded.toggle(),
                child: Obx(
                  () => Text(
                    isExpanded.value ? 'Read less' : 'Read more',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.primary,
                          height: 1.5,
                          letterSpacing: 0.5,
                        ),
                  ),
                ),
              ),
      ],
    );
  }
}
