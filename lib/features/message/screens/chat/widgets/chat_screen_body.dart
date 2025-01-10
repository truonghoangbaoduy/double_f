import 'package:double_f_last_mile_delivery/features/message/screens/chat/widgets/chat_item.dart';
import 'package:double_f_last_mile_delivery/features/message/screens/chat/widgets/chat_own_item.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({super.key});

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
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: AppColors.neutralOffWhite,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ChatOwnItem(
                message:
                    'Hi Demola! Yes, I just finished developing the "Chat" template.',
              ),
              SizedBox(height: AppDimens.sectionMarginMedium),
              ChatItem(
                message:
                    'Hi Abiola, any progress on the project? We need a link for standup.',
              ),
              SizedBox(height: AppDimens.sectionMarginMedium),
              ChatOwnItem(
                message: 'I will send the link in a few minutes.',
              ),
              SizedBox(height: AppDimens.sectionMarginMedium),
              ChatItem(
                message: 'Alright, thanks!',
              ),
              SizedBox(height: AppDimens.sectionMarginMedium),
              ChatOwnItem(
                message:
                    'Hi Demola! Yes, I just finished developing the "Chat" template.',
              ),
              SizedBox(height: AppDimens.sectionMarginMedium),
              ChatItem(
                message:
                    'Hi Abiola, any progress on the project? We need a link for standup.',
              ),
              SizedBox(height: AppDimens.sectionMarginMedium),
              ChatOwnItem(
                message: 'I will send the link in a few minutes.',
              ),
              SizedBox(height: AppDimens.sectionMarginMedium),
              ChatItem(
                message: 'Alright, thanks!',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
