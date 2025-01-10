import 'package:double_f_last_mile_delivery/features/home/screens/widgets/home_screen_search_bar.dart';
import 'package:double_f_last_mile_delivery/features/message/screens/widgets/message_item.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';

class MessageScreenBody extends StatelessWidget {
  const MessageScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.appHorizontalPadding,
            vertical: AppDimens.sectionMarginMedium,
          ),
          decoration: const BoxDecoration(color: AppColors.white),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              HomeScreenSearchBar(hint: 'Search'),
              MessageItem(
                  isOnline: true,
                  message:
                      'Hey, how are you?  how are you? how are you? how are you? how are you? how are you? how are you? how are you?',
                  time: 'Yesterday',
                  unreadCount: 0,
                  name: 'Victoria Avila'),
              MessageItem(
                  isOnline: false,
                  message: 'Aright, noted',
                  time: 'Yesterday',
                  unreadCount: 2,
                  name: 'Tobi Ozenua'),
              MessageItem(
                  isOnline: true,
                  message: 'How is it going?',
                  time: '11:11 am',
                  unreadCount: 0,
                  name: 'Demola Andreas'),
              MessageItem(
                  isOnline: false,
                  message: 'Aright, noted',
                  time: 'Yesterday',
                  unreadCount: 2,
                  name: 'Tobi Ozenua'),
              MessageItem(
                  isOnline: false,
                  message: 'Aright, noted',
                  time: 'Yesterday',
                  unreadCount: 2,
                  name: 'Tobi Ozenua'),
              MessageItem(
                  isOnline: false,
                  message: 'Aright, noted',
                  time: 'Yesterday',
                  unreadCount: 2,
                  name: 'Tobi Ozenua'),
              MessageItem(
                  isOnline: false,
                  message: 'Aright, noted',
                  time: 'Yesterday',
                  unreadCount: 2,
                  name: 'Tobi Ozenua'),
              MessageItem(
                  isOnline: false,
                  message: 'Aright, noted',
                  time: 'Yesterday',
                  unreadCount: 2,
                  name: 'Tobi Ozenua'),
              MessageItem(
                  isOnline: false,
                  message: 'Aright, noted',
                  time: 'Yesterday',
                  unreadCount: 2,
                  name: 'Tobi Ozenua'),
              MessageItem(
                  isOnline: false,
                  message: 'Aright, noted',
                  time: 'Yesterday',
                  unreadCount: 2,
                  name: 'Tobi Ozenua'),
            ],
          ),
        ),
      ),
    );
  }
}
