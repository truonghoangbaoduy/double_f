import 'package:double_f_last_mile_delivery/features/forum/screens/post/widgets/comment_input.dart';
import 'package:double_f_last_mile_delivery/features/forum/screens/post/widgets/comment_no_reply_item.dart';
import 'package:double_f_last_mile_delivery/features/forum/screens/post/widgets/comment_reply_item.dart';
import 'package:double_f_last_mile_delivery/features/forum/screens/post/widgets/post_screen_body.dart';
import 'package:double_f_last_mile_delivery/features/forum/screens/post/widgets/post_screen_header.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: AppDimens.sectionMarginSmall,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const PostScreenHeader(),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const PostScreenBody(),
                      Container(
                        padding: const EdgeInsets.only(
                          left: AppDimens.appHorizontalPadding,
                          right: AppDimens.appHorizontalPadding,
                          bottom: AppDimens.sectionMarginMedium,
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CommentReplyItem(
                                like: 300,
                                comment:
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec viverra felis eu arcu maximus sagittis. Ut pellentesque orci sit amet nisl tincidunt lobortis. Aliquam erat volutpat. Aliquam condimentum, justo sit amet tincidunt rhoncus, turpis lacus ornare nibh, ut iaculis nisi massa id neque. Suspendisse vel facilisis dolor. Vivamus non pharetra tortor, vitae ornare quam. Nulla nec quam felis.',
                                name: 'Jack',
                                time: '6h',
                                isAuthor: true),
                            CommentNoReplyItem(
                              isAuthor: true,
                              like: 100,
                              name: 'Jack',
                              comment: 'This is a comment',
                              time: '5h',
                            ),
                            CommentNoReplyItem(
                              isAuthor: true,
                              like: 100,
                              name: 'Jack',
                              comment: 'This is a comment',
                              time: '5h',
                            ),
                            CommentNoReplyItem(
                              isAuthor: true,
                              like: 100,
                              name: 'Jack',
                              comment: 'This is a comment',
                              time: '5h',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const CommentInput(),
            ],
          ),
        ),
      ),
    );
  }
}
